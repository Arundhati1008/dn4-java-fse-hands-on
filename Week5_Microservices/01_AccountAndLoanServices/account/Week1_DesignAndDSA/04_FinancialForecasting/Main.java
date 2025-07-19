public class Main {
    public static void main(String[] args) {
        double baseValue = 10000.0;  // Initial amount
        double growthRate = 0.10;    // 10% annual growth
        int years = 5;

        double recursiveResult = ForecastService.futureValueRecursive(baseValue, growthRate, years);
        double iterativeResult = ForecastService.futureValueIterative(baseValue, growthRate, years);

        
        System.out.println(" Future Value (Recursive): \u20B9" + String.format("%.2f", recursiveResult));
        System.out.println(" Future Value (Iterative): \u20B9" + String.format("%.2f", iterativeResult));
    }
}


