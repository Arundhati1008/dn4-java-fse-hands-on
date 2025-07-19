# Exercise 2 – E-commerce Platform Search Function

## Objective:
Implement both **linear search** and **binary search** to find products by name in an e-commerce platform.

---

## Classes:

| Class            | Description |
|------------------|-------------|
| `Product.java`     | POJO for product info (id, name, category) |
| `SearchService.java` | Contains `linearSearch` and `binarySearch` methods |
| `Main.java`       | Loads product array and runs both search methods |

---

##  Output 

Linear Search: Searching for 'Shoes'
103 - Shoes [Fashion]

Binary Search: Searching for 'Watch'
105 - Watch [Accessories]

---

##  Algorithm Analysis

| Algorithm       | Time Complexity | Best Case | Worst Case |
|----------------|------------------|-----------|------------|
| Linear Search  | O(n)             | O(1)      | O(n)       |
| Binary Search  | O(log n)         | O(1)      | O(log n)   |

###  Binary search is faster for sorted data, but requires sorting.
###  Linear search works without sorting, but is slower on large datasets.

---

##  How to Run

```bash
javac *.java
java Main
