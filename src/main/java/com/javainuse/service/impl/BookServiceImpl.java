package com.javainuse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javainuse.dao.BookDao;
import com.javainuse.model.Book;
import com.javainuse.service.BookService;

@Service
public class BookServiceImpl implements BookService{
	
	@Autowired
	BookDao bookDao;
	
	@Override
	public void insertBook(Book book) {
		// TODO Auto-generated method stub
		bookDao.insertBook(book);
	}

	@Override
	public List<Book> getAllBooks() {
		// TODO Auto-generated method stub
		return bookDao.getAllBooks();
	}

	@Override
	public Book getBookById(String bookId) {
		// TODO Auto-generated method stub
		return bookDao.getBookById(bookId);
	}

	@Override
	public void deleteBook(String bookNo) {
		// TODO Auto-generated method stub
		bookDao.deleteBook(bookNo);
	}

	@Override
	public void updateBook(String bookNo, String bookName, String author, String edition) {
		// TODO Auto-generated method stub
		bookDao.updateBook(bookNo, bookName, author, edition);
	}

}
