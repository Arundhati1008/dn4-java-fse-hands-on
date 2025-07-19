#  Exercise: JUnit Setup – DN 4.0 Java FSE

This project demonstrates how to set up **JUnit** for a Java application using Maven, as part of the Cognizant Digital Nurture 4.0 Java FSE hands-on assessments.

---

##  Objective

Set up a Maven-based Java project and configure **JUnit 4.13.2** to run unit tests.

---

##  Tools & Technologies

- Java 8+
- JUnit 4.13.2
- Maven
- VS Code 

---

##  Steps Followed

1. Created Maven project using `maven-archetype-quickstart`
2. Added JUnit dependency in `pom.xml`
3. Created a basic class `Calculator.java` with an `add()` method
4. Wrote a unit test in `CalculatorTest.java` using `assertEquals()`
5. Ran tests with:
   ```bash
   mvn test
   
-------------------------------------------------------
 T E S T S
-------------------------------------------------------
Running com.example.CalculatorTest
Tests run: 1, Failures: 0, Errors: 0, Skipped: 0
BUILD SUCCESS
