## Exercise 2 – Implementing Dependency Injection & Exercise 7 – Constructor and Setter Injection

This exercise shows how to inject `BookRepository` into `BookService` using Spring’s setter-based DI through `applicationContext.xml`.

The same setup demonstrates how Spring’s IoC container manages and wires dependencies using XML configuration in exercise 5.


In this 7th exercise demonstrates how to use both constructor injection and setter injection in Spring.

- `NotificationService` is injected using **constructor injection**
- `BookRepository` is injected using **setter injection**
- Beans are wired using `applicationContext.xml`
