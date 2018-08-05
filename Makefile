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
