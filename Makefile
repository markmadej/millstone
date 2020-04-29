.DEFAULT_GOAL: help
SHELL=/bin/bash -o pipefail

# Cite: https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
help: ## Display this help page
	@grep -E '^[a-zA-Z0-9/_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: lint
lint:  ## Run Checkstyle checks.
	mvn checkstyle:check -Punit

.PHONY: unit
unit:  ## Run unit tests.
	mvn clean test -Punit

.PHONY: install
install:  ## Maven install.
	mvn clean install -Pdev

.PHONY: run
run:  ## Run the service.
	mvn spring-boot:run -Pdev

.PHONY: test
test: ## Run all tests.
	$(MAKE) lint unit

.PHONY: coverage
coverage:  ## Run code coverage report.
	mvn clean jacoco:prepare-agent install jacoco:report -Pdev

.PHONY: coverageinbrowser
coverageinbrowser:  ## View code coverage report in browser (assumes you already created it).
	open ./target/site/jacoco/com.mmadej.millstone/index.html

.PHONY: viewcoverage
viewcoverage:  ## Run coverage report and open it in a browser window.
	$(MAKE) coverage coverageinbrowser

.PHONY: newdb
newdb:  ## Create a new mySQL instance with hardcoded password.
	docker run -p 3306:3306 --name millstone-mysql -v $(PWD)/localMySQLData:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=mysqlpass -e MYSQL_DATABASE=millstone -d mysql:5.6
	@echo Your mySQL password is mysqlpass

.PHONY: startdb
startdb: ## Start the previously created mySQL instance.
	docker start millstone-mysql

.PHONY: stopdb
stopdb: ## Stop the current running mySQL instance.
	docker stop millstone-mysql

.PHONY: rmdb
rmdb: rmdbdata ## Remove the mySQL Docker container (removing any existing data).
	docker rm millstone-mysql

.PHONY: rmdbdata
rmdbdata: ## Remove the local mySQL data directory.
	touch $(PWD)/localMySQLData  ## Just so the rm command does not error out if this directory was already deleted.
	rm -r $(PWD)/localMySQLData

.PHONY: cleandb
cleandb: stopdb rmdb newdb startdb ## Remove the existing mySQL container/image and rebuild/restart everything.

.PHONY: dbprompt
dbprompt: ## Open a local mySQL server prompt.
	mysql -h 127.0.0.1 -P3306 -uroot -pmysqlpass

.PHONY: dblogs
dblogs: ## Dump logs from the mySQL Docker container.
	docker logs millstone-mysql
