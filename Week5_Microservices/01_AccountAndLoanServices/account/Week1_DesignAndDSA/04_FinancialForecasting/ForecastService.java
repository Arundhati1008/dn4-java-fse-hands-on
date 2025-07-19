public class ForecastService {


    public static double futureValueRecursive(double baseValue, double growthRate, int years) {
        if (years == 0) return baseValue;
        return futureValueRecursive(baseValue, growthRate, years - 1) * (1 + growthRate);
    }


    public static double futureValueIterative(double baseValue, double growthRate, int years) {
        double result = baseValue;
        for (int i = 0; i < years; i++) {
            result *= (1 + growthRate);
        }
        return result;
    }
}
