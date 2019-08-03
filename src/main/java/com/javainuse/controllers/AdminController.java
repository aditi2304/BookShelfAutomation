/*package com.javainuse.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javainuse.model.Book;
import com.javainuse.model.Employee;
import com.javainuse.service.BookService;
import com.javainuse.service.EmployeeService;

@Controller 
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	BookService bookService;
	
	@RequestMapping("/login")
	public ModelAndView showadmin(@ModelAttribute("emp") Employee emp) {
		return new ModelAndView("login", "emp", new Employee());
	}
	
	@RequestMapping(value = "/addNewBook", method = RequestMethod.GET)
	public ModelAndView show() {
	
		
		return new ModelAndView("addEmployee", "book", new Book());
		
	}
	@RequestMapping(value = "/addNewBook", method = RequestMethod.POST)
	public ModelAndView processRequest(@ModelAttribute("book") Book book) {
		
		bookService.insertBook(book);
		
		List<Book> books = bookService.getAllBooks();
	
		ModelAndView model = new ModelAndView("getEmployees");
		model.addObject("books", books);
		return model;
	}
	@RequestMapping(value = "/deleteBook", method = RequestMethod.GET)
	public ModelAndView deleteBook(@ModelAttribute("book") Book book, @RequestParam(name = "id") String id) {
		
		bookService.deleteBook(id);
		
		List<Book> books = bookService.getAllBooks();
		
		ModelAndView model = new ModelAndView("getEmployees");
		model.addObject("books", books);
		return model;
	}
	
	@RequestMapping(value = "/updatebook", method = RequestMethod.GET)
	public ModelAndView updateBook(@ModelAttribute("book") Book book, @RequestParam(name = "bookNo") String bookNo,
			@RequestParam(name = "bookName") String bookName, @RequestParam(name = "author") String author,
			@RequestParam(name = "edition") String edition) {
		System.out.println(bookNo + " " + bookName + " " + author + " " + edition);
		bookService.updateBook(bookNo, bookName, author, edition);
		
		List<Book> books = bookService.getAllBooks();
		/*for(Book b : books) {
			System.out.println(b);
		}*/
		/*ModelAndView model = new ModelAndView("getEmployees");
		model.addObject("books", books);
		return model;
	}
}*/
