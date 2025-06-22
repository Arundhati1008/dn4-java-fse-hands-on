public class Logger {
    private static Logger instance;

    // Private constructor
    private Logger() {
        System.out.println("Logger Initialized");
    }

    // Public static method to get the instance
    public static Logger getInstance() {
        if (instance == null) {
            instance = new Logger();
        }
        return instance;
    }

    // Log method
    public void log(String message) {
        System.out.println("Log: " + message);
    }
}

