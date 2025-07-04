package com.library.service;

import com.library.repository.BookRepository;

public class BookService {
    private BookRepository bookRepository;
    private NotificationService notificationService;

    //  Constructor Injection
    public BookService(NotificationService notificationService) {
        this.notificationService = notificationService;
    }

    //  Setter Injection
    public void setBookRepository(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public void addBook(String bookName) {
        bookRepository.saveBook(bookName);
        notificationService.notifyUser("Book added: " + bookName);
    }
}

