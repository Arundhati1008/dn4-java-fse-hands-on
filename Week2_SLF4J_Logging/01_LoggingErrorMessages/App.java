package com.example;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class App {
    private static final Logger logger = LoggerFactory.getLogger(App.class);

    public static void main(String[] args) {
        logger.info("Application started...");

        try {
            simulateError();
        } catch (Exception e) {
            logger.error("An error occurred: {}", e.getMessage(), e);
        }

        logger.warn("This is a warning message.");
        logger.info("Application finished.");
    }

    private static void simulateError() throws Exception {
        throw new Exception("Simulated exception for logging demo.");
    }
}




