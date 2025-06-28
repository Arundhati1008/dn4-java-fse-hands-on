# SLF4J Logging Example

This is a simple Java project demonstrating how to use [SLF4J (Simple Logging Facade for Java)](http://www.slf4j.org/) with [Logback](https://logback.qos.ch/) to log messages at different levels (INFO, ERROR, WARN).

##  Features

- Logging at multiple levels: `INFO`, `ERROR`, and `WARN`
- Exception logging with stack trace
- Basic Maven setup with SLF4J and Logback dependencies
- Clean project structure using Java and Maven


##  Technologies Used

- Java 8+
- Maven
- SLF4J (v1.7.30)
- Logback Classic (v1.2.3)

##  Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/SLF4JLoggingExample.git
   cd SLF4JLoggingExample
2. **Build and run the project using Maven:**
   mvn clean compile exec:java
## Sample Output
vbnet
Copy code
INFO  com.example.App - Application started...
ERROR com.example.App - An error occurred: Simulated exception for logging demo.
java.lang.Exception: Simulated exception for logging demo.
    at com.example.App.simulateError(App.java:23)
    ...
WARN  com.example.App - This is a warning message.
INFO  com.example.App - Application finished.




