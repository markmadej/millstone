MVN = mvn

.PHONY: lint
lint:
	@echo
	@echo \*\*\* Running Checkstyle checks.
	$(MVN) checkstyle:check

.PHONY: unit
unit:
	@echo
	@echo \*\*\* Running unit tests.
	$(MVN) clean test

.PHONY: install
install:
	@echo
	@echo \*\*\* Installing.
	$(MVN) clean install

.PHONY: run
run:
	@echo
	@echo \*\*\* Running the app with local settings.
	$(MVN) spring-boot:run

.PHONY: test
test: lint unit

.PHONY: coverage
coverage:
	@echo
	@echo \*\*\* Running code coverage report.
	$(MVN) clean jacoco:prepare-agent install jacoco:report

.PHONY: coverageinbrowser
coverageinbrowser:
	@echo
	@echo \*\*\* Opening coverage report in browser.
	open ./target/site/jacoco/com.mmadej.millstone/index.html

.PHONY: viewcoverage
viewcoverage: coverage coverageinbrowser

.PHONY: dockersetup
dockersetup:
	@echo
	@echo \*\*\* Pulling latest mySQL Docker image.
	docker pull mysql

.PHONY: runmysql
runmysql: dockersetup
	@echo
	@echo \*\*\* Running Docker mySQL image.
	docker run -e "MYSQL_ROOT_PASSWORD=testpassword" -d mysql 

.PHONY: help
help:
	clear
	@echo
	@echo Millstone Makefile commands:
	@echo
	@echo "make test         - run tests (unit tests, Checkstyle)"
	@echo "make install      - build/install the service"
	@echo "make run          - run the service locally"
	@echo "make viewcoverage - run code coverage report and open in browser"
	@echo
	@echo Please see the README for additional information.
	@echo
