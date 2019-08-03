package com.javainuse.dao;

import java.util.List;

import com.javainuse.model.Book;

public interface BookDao {
	void insertBook(Book book);
	List<Book> getAllBooks();
	Book getBookById(String bookId);
	void deleteBook(String bookNo);
	void updateBook(String bookNo, String bookName, String author, String edition);
}

