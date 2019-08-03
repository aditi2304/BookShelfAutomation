package com.javainuse.model;

public class Book {

	private String bookNo;
	private String bookName;
	private String author;
	private String edition;
	
	public String getBookNo() {
		return bookNo;
	}
	public Book(String bookNo, String bookName, String author, String edition) {
		super();
		this.bookNo = bookNo;
		this.bookName = bookName;
		this.author = author;
		this.edition = edition;
	}
	public Book() {
		
	}
	public void setBookNo(String bookNo) {
		this.bookNo = bookNo;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookAuthor() {
		return author;
	}
	public void setBookAuthor(String bookAuthor) {
		this.author = bookAuthor;
	}
	public String getBookEdition() {
		return edition;
	}
	public void setBookEdition(String bookEdition) {
		this.edition = bookEdition;
	}

}