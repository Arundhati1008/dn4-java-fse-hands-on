# Exercise 2 – Factory Method Pattern (Document Management System)

## Objective:
Implement the Factory Method Design Pattern to dynamically create different types of documents such as Word, PDF, and Excel, based on user input or context.

This helps ensure loose coupling between object creation and usage.

---

## Components:

| Class/File               | Description                                      |
|--------------------------|--------------------------------------------------|
| `Document.java`          | Interface with the `open()` method               |
| `WordDocument.java`      | Implements `Document` to simulate Word behavior  |
| `PdfDocument.java`       | Implements `Document` to simulate PDF behavior   |
| `ExcelDocument.java`     | Implements `Document` to simulate Excel behavior |
| `DocumentFactory.java`   | Abstract class with abstract method `createDocument()` |
| `WordDocumentFactory.java` | Concrete factory to return `WordDocument`       |
| `PdfDocumentFactory.java`  | Concrete factory to return `PdfDocument`        |
| `ExcelDocumentFactory.java`| Concrete factory to return `ExcelDocument`      |
| `Main.java`              | Demonst



## Output 
Opening Word Document
Opening PDF Document
Opening Excel Document
