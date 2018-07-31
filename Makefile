MVN=mvn

lint:
	$(MVN) checkstyle:check

unit:
	$(MVN) clean test

test: lint unit

coverage:
	$(MVN) clean jacoco:prepare-agent install jacoco:report

coverageinbrowser:
	open ./target/site/jacoco/com.mmadej.millstone/index.html

viewcoverage: coverage coverageinbrowser

debuglocal:
	$(MVN) spring-boot:run