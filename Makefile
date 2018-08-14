MVN=mvn

lint:
	$(MVN) checkstyle:check

unit:
	$(MVN) clean test

install:
	$(MVN) clean install

run:
	$(MVN) spring-boot:run

test: lint unit

coverage:
	$(MVN) clean jacoco:prepare-agent install jacoco:report

coverageinbrowser:
	open ./target/site/jacoco/com.mmadej.millstone/index.html

viewcoverage: coverage coverageinbrowser

help:
	@echo
	@echo Millstone Makefile commands:
	@echo
	@echo "make test - run tests (unit tests, Checkstyle)"
	@echo make install - build/install the service
	@echo make run - run the service locally
	@echo make viewcoverage - run code coverage report and open in browser
	@echo
	@echo Please see the README for additional information.
	@echo
