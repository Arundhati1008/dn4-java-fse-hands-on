#  Exercise 2: Verifying Interactions – Mockito (DN 4.0 Java FSE)

This exercise demonstrates how to use **Mockito's `verify()` method** to confirm that a method was called with expected arguments.

---

## Objective

-  Create a mock object using Mockito
-  Call a method using that mock
-  Verify that the mock’s method was called with specific arguments

---

---

##  Test Logic

```java
verify(mockApi).getData();

 Run Instructions
bash
mvn clean test

