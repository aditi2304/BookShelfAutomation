package com.javainuse.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.comviva.bookshelf.BookRowMapper1;
import com.comviva.bookshelf.Books;
import com.javainuse.model.Admin;
import com.javainuse.model.Book;
import com.javainuse.model.Employee;
import com.javainuse.service.BookService;
import com.javainuse.service.EmployeeService;
import com.javainuse.model.*;

@Controller

public class EmployeeController {

	Mapper mymap = new Mapper();
	@Autowired
	EmployeeService employeeService;
	@Autowired
	BookService bookService;
	
	@RequestMapping("/adminlogin")
	public ModelAndView showadmin() {
		return new ModelAndView("adminlogin", "adm", new Admin());
	}
	
	@RequestMapping("/login_admin")
	public ModelAndView login_admin(@ModelAttribute("adm") Admin adm, HttpServletRequest request) {
		System.out.println(adm.getAdminId() + " " + adm.getAdminPassword());
		ModelAndView mv=new ModelAndView("adminlogin");
		ModelAndView mv2=new ModelAndView("admin");
		String adminid = adm.getAdminId();
		String adminpassword = adm.getAdminPassword();
		Admin result = mymap.AdminAvailable(adminid, adminpassword);
		
		if(result == null) {
			mv.addObject("messageadmin", "Incorrect details");
			return mv;
		}
		else {
			//request.getSession().setAttribute("session_id", result.getEmpId());
			//System.out.println("session" + request.getSession().getAttribute("session_id"));
			//mv2.addObject("eid", result.getEmpId());
			//mv2.addObject("ename", result.getEmpName());
			//mv2.addObject("eemail", result.getEmpEmail());
			
			return mv2; 
		}
	}
	
	@RequestMapping("/employeetable")
	public ModelAndView showemployee() {
	
		ModelAndView mv = new ModelAndView("employeetable");
		List<Employee> employee = employeeService.getAllEmployees();
		mv.addObject("employee_list", employee);
		return mv;
	}
	
	@RequestMapping("/booktable")
	public ModelAndView showbooks_admin() {
		
		ModelAndView mv = new ModelAndView("booktable");
		List<Book> book = bookService.getAllBooks();
		mv.addObject("book_list", book);
		return mv;
	}
	
	@RequestMapping("/transactiontable")
	public ModelAndView shoetransactions_admin() {
		
		BookRowMapper1 book_mapper = new BookRowMapper1();
		List<Transaction> trans = book_mapper.getTransactions();
		
		ModelAndView mv = new ModelAndView("transactiontable");
		mv.addObject("transaction_list", trans);

		return mv;
	}
	
	@RequestMapping("/bookissueinfotable")
	public ModelAndView shoebookissueinfo_admin() {
		
		BookRowMapper1 book_mapper = new BookRowMapper1();
		List<BookIssueInfo> book_issue = book_mapper.getBookIssueInfo();
		
		ModelAndView mv = new ModelAndView("bookissueinfo");
		mv.addObject("bookissueinfo_list", book_issue);

		return mv;
	}
	@RequestMapping(value = "/addNewBook", method = RequestMethod.GET)
	public ModelAndView showbooks() {
	
		
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
		
		System.out.println(id);
		bookService.deleteBook(id);
		
		List<Book> books = bookService.getAllBooks();
		
		ModelAndView model = new ModelAndView("booktable");
		model.addObject("book_list", books);
		return model;
	}
	
	@RequestMapping(value = "/updatebook", method = RequestMethod.GET)
	public ModelAndView updateBook(@ModelAttribute("book") Book book, @RequestParam(name = "bookNo") String bookNo,
			@RequestParam(name = "bookName") String bookName, @RequestParam(name = "author") String author,
			@RequestParam(name = "edition") String edition) {
		System.out.println(bookNo + " " + bookName + " " + author + " " + edition);
		bookService.updateBook(bookNo, bookName, author, edition);
		
		List<Book> books = bookService.getAllBooks();
		ModelAndView model = new ModelAndView("getEmployees");
		model.addObject("books", books);
		return model;
	}
	
	@RequestMapping("/login")
	public ModelAndView loginpage() {
		return new ModelAndView("login", "emp", new Employee());
	}

	@RequestMapping("/welcome")
	public ModelAndView firstPage() {
		return new ModelAndView("welcome");
	}
	
	@RequestMapping(value = "/addNewEmployee", method = RequestMethod.GET)
	public ModelAndView show() {
		return new ModelAndView("addEmployee", "emp", new Employee());
	}
	
	@RequestMapping(value = "/login_user", method = RequestMethod.POST)
	public ModelAndView login_user(@ModelAttribute("emp") Employee emp, HttpServletRequest request) {
	
		ModelAndView mv=new ModelAndView("login");
		ModelAndView mv2=new ModelAndView("account");
		String employeeid = emp.getEmpId();
		String emppassword = emp.getPassword();
		Employee result = mymap.EmployeeAvailable(employeeid, emppassword);
		
		if(result == null) {
			mv.addObject("message", "Incorrect details");
			return mv;
		}
		else {
			request.getSession().setAttribute("session_id", result.getEmpId());
			System.out.println("session" + request.getSession().getAttribute("session_id"));
			mv2.addObject("eid", result.getEmpId());
			mv2.addObject("ename", result.getEmpName());
			mv2.addObject("eemail", result.getEmpEmail());
			
			return mv2; 
		}
	}
	
	@RequestMapping(value = "/addNewEmployee", method = RequestMethod.POST)
	public ModelAndView processRequest(@ModelAttribute("emp") Employee emp) {
		
		employeeService.insertEmployee(emp);
		
		List<Employee> employees = employeeService.getAllEmployees();
		ModelAndView model = new ModelAndView("getEmployees");
		model.addObject("employees", employees);
		return model;
	}

	@RequestMapping("/getEmployees")
	public ModelAndView getEmployees() {
		List<Employee> employees = employeeService.getAllEmployees();
		ModelAndView model = new ModelAndView("getEmployees");
		model.addObject("employees", employees);
		return model;
	}
	
	
	@RequestMapping("/search")
	public ModelAndView book_search(@RequestParam String name, HttpServletRequest request) {
		Object s = request.getSession().getAttribute("session_id");
		if(s == null){
			return new ModelAndView("login", "emp", new Employee());
		}
		else
		{
		System.out.println(name);
		BookRowMapper1 user1=new BookRowMapper1();
		List<Books> query=user1.BookAvailable(name);
		
		ModelAndView mv = new ModelAndView();
		      if(query.size()==0)
				return new ModelAndView("menu");
			else
		      {
				mv.addObject("query",query);
				return mv;
		      }
		}
		
	}
	
	/*@RequestMapping(value="/history",method = RequestMethod.GET)
	public ModelAndView book_search_history(@RequestParam String EmpId) {
		System.out.println(EmpId);
		BookRowMapper1 user1=new BookRowMapper1();
		List<Transaction> query=user1.getTransactions(EmpId);
		
		ModelAndView mv = new ModelAndView();
		   System.out.println("query size is"+query.size());
	
		      if(query.size()==0)
				return new ModelAndView("menu");
			else
		      {
				
				mv.addObject("query",query);
				return mv;
		      }
		
	}*/
	
	@RequestMapping(value="/successfulreturn",method = RequestMethod.GET)
	public ModelAndView book_return(@RequestParam String EmpId,@RequestParam String BookNo) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println(EmpId);
		BookRowMapper1 user1=new BookRowMapper1();
	    user1.returnBook(EmpId,BookNo);
		mv.addObject("user1", user1);
		   
				return mv;
		      }
		
	}
	
	

