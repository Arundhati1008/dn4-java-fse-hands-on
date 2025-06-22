public class Main {
    public static void main(String[] args) {
        Product[] products = new Product[] {
            new Product(101, "Laptop", "Electronics"),
            new Product(102, "Shampoo", "Personal Care"),
            new Product(103, "Shoes", "Fashion"),
            new Product(104, "Mobile", "Electronics"),
            new Product(105, "Watch", "Accessories")
        };

        System.out.println("Linear Search: Searching for 'Shoes'");
        Product result1 = SearchService.linearSearch(products, "Shoes");
        System.out.println(result1 != null ? result1 : "Product not found");

   
        System.out.println("\nBinary Search: Searching for 'Watch'");
        Product result2 = SearchService.binarySearch(products, "Watch");
        System.out.println(result2 != null ? result2 : "Product not found");
    }
}

