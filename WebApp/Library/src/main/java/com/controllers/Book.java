package com.controllers;


public class Book {

    private String bookName;
    private String author;
    private Integer copyCount;

    private String coverImage;
    private String addedBy;


    public Book( String bookName, String author, Integer copyCount, String coverImage, String addedBy) {

        this.bookName = bookName;
        this.author = author;
        this.copyCount = copyCount;
        this.coverImage = coverImage;
        this.addedBy = addedBy;
    }

    public String getBookName() {
        return bookName;
    }

    public Integer getCopyCount() {
        return copyCount;
    }

    public String getAuthor() {
        return author;
    }

    public String getCoverImage() {
        return coverImage;
    }

    public String getAddedBy() {
        return addedBy;
    }

}
