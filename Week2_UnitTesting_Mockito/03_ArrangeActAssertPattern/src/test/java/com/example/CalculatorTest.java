package com.example;

import org.junit.*;

import static org.junit.Assert.*;

public class CalculatorTest {

    private Calculator calc;

    @Before
    public void setUp() {
         // Arrange: setup before each test
        calc = new Calculator();
        System.out.println(" Setup complete");
    }

    @After
    public void tearDown() {
        System.out.println(" Teardown complete");
    }

    @Test
    public void testAddition() {
        // Act
        int result = calc.add(10, 5);

        // Assert
        assertEquals(15, result);
    }

    @Test
    public void testMultiplication() {
        // Act
        int result = calc.multiply(4, 3);

        // Assert
        assertEquals(12, result);
    }
}
