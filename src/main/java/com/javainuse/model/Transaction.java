package com.javainuse.model;

import java.sql.Date;

public class Transaction {
	String empId;
	String bookNo;
	Date DOIssue;
	Date DOReturn;
	public Transaction(){
		empId=null;
		bookNo=null;
		DOIssue=DOReturn=null;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String EmpId) {
		this.empId = EmpId;
	}
	public String getBookNo() {
		return bookNo;
	}
	public void setBookNo(String bookNo) {
		this.bookNo = bookNo;
	}
	
	public Date getDOIssue() {
		return DOIssue;
	}
	public void setDOIssue(Date dOIssue) {
		DOIssue = dOIssue;
	}
	public Date getDOReturn() {
		return DOReturn;
	}
	public void setDOReturn(Date dOReturn) {
		DOReturn = dOReturn;
	}
}
