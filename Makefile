.DEFAULT_GOAL: help
SHELL=/bin/bash -o pipefail

# Cite: https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
help: ## Display this help page
	@grep -E '^[a-zA-Z0-9/_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

MVN=mvn

.PHONY: lint
lint:  ## Run Checkstyle checks.
	$(MVN) checkstyle:check

.PHONY: unit
unit:  ## Run unit tests.
	$(MVN) clean test

.PHONY: install
install:  ## Maven install.
	$(MVN) clean install

.PHONY: run
run:  ## Run the service.
	$(MVN) spring-boot:run

.PHONY: test
test: ## Run all tests.
	$(MAKE) lint unit

.PHONY: coverage
coverage:  ## Run code coverage report.
	$(MVN) clean jacoco:prepare-agent install jacoco:report

.PHONY: coverageinbrowser
coverageinbrowser:  ## View code coverage report in browser (assumes you already created it).
	open ./target/site/jacoco/com.mmadej.millstone/index.html

.PHONY: viewcoverage
viewcoverage:  ## Run coverage report and open it in a browser window.
	$(MAKE) coverage coverageinbrowser

.PHONY: newmysql
newmysql:  ## Create a new mySQL instance with hardcoded password.
	docker run --name millstone-mysql -v $(PWD)/localMySQLData:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=mysqlpass -d mysql:latest
	@echo Your mySQL password is mysqlpass

.PHONY: startmysql
startmysql: ## Start the previously created mySQL instance.
	docker start millstone-mysql

.PHONY: stopmysql
stopmysql: ## Stop the current running mySQL instance.
	docker stop millstone-mysql

.PHONY: rmmysql
rmmysql: ## Remove the mySQL Docker container (removing any existing data).
	docker rm millstone-mysql