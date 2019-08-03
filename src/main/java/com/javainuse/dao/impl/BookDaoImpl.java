package com.javainuse.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.javainuse.dao.BookDao;
import com.javainuse.dao.EmployeeDao;
import com.javainuse.model.Book;
import com.javainuse.model.Employee;

@Repository
public class BookDaoImpl extends JdbcDaoSupport implements BookDao {
	
	@Autowired 
	DataSource dataSource;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
	}
	
	@Override
	public void insertBook(Book book) {
		String sql = "INSERT INTO books " +
				"(bookNo, bookName, author, edition) VALUES (?, ?, ?, ?)" ;
		getJdbcTemplate().update(sql, new Object[]{
				book.getBookNo(), book.getBookName(), book.getBookAuthor(), book.getBookEdition()
		});
	}

	@Override
	public List<Book> getAllBooks() {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM books";
		List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
		System.out.println(getJdbcTemplate().queryForList(sql));
		List<Book> result = new ArrayList<Book>();
		for(Map<String, Object> row:rows){
			Book book = new Book();
			//book.boookNo = "dd";
			book.setBookNo((String)row.get("bookNo"));
			//System.out.println((String)row.get("bookNo"));
			book.setBookName((String)row.get("bookName"));
			//System.out.println((String)row.get("bookName"));
			book.setBookAuthor((String)row.get("author"));
			//System.out.println((String)row.get("author"));
			book.setBookEdition((String)row.get("edition"));
			//System.out.println((String)row.get("edition"));
			result.add(book);
		}
		
		return result;
		
	}

	@Override
	public Book getBookById(String bookId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteBook(String bookNo) {
		// TODO Auto-generated method stub
		String sql = "delete from books where bookno = '" + bookNo + "'";
		getJdbcTemplate().update(sql);
	}

	@Override
	public void updateBook(String bookNo, String bookName, String author, String edition) {
		// TODO Auto-generated method stub
		String sql = "update books set bookname='" + bookName + "', " + "author='" +
		author + "', " + "edition='" + edition + "'" + " where bookno='" + bookNo + "'";
		getJdbcTemplate().update(sql);
		
	}
	
}
