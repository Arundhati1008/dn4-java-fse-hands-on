# Exercise 7 – Financial Forecasting (Recursive Algorithm)

##  Objective:
Predict future financial values using a recursive function and analyze its time complexity.

---

## Formula Used

futureValue(years) = futureValue(years - 1) * (1 + growthRate)


---

##  Files:

| File                 | Purpose |
|----------------------|---------|
| `ForecastService.java` | Contains recursive + iterative methods |
| `Main.java`          | Calls and prints both versions |
| `output.png`         | (optional) Screenshot of terminal result |
| `README.md`          | Explanation of the solution |

---

##  Output

 Future Value (Recursive): ₹16105.10
 Future Value (Iterative): ₹16105.10

---

##  Time Complexity

| Method     | Time Complexity |
|------------|------------------|
| Recursive  | O(n) calls, but no memoization |
| Iterative  | O(n), faster and uses less memory |

---

##  How to Run

```bash
javac ForecastService.java Main.java
java Main
