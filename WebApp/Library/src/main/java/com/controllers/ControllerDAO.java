package com.controllers;

public interface ControllerDAO {
    void insert(Book book);
    Book findAllBooks(int lastBookId);
    User findUser(String userId);
    Integer findByBookId();
}
