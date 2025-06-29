#  Exercise 3: Assertions in JUnit – DN 4.0 Java FSE

This exercise demonstrates the use of various **JUnit 4 assertions** in unit testing.  

---

##  Objective

Write a test class using different types of assertions to validate basic logic:

- `assertEquals()`
- `assertTrue()`
- `assertFalse()`
- `assertNull()`
- `assertNotNull()`

---

---

##  Test Class: `AssertionsTest.java`

```java
package com.example;

import org.junit.Test;
import static org.junit.Assert.*;

public class AssertionsTest {

    @Test
    public void testAssertions() {
        assertEquals(5, 2 + 3);
        assertTrue(5 > 3);
        assertFalse(5 < 3);
        assertNull(null);
        assertNotNull(new Object());
    }
}

Run Instructions
bash
Copy code
mvn clean test


