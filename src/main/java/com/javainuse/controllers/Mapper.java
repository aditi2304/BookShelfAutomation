package com.javainuse.controllers;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import com.javainuse.model.*;
public class Mapper {

	public Employee EmployeeAvailable(String id, String password) {
	
	Employee emp = null;
	
		  try{
		
		 
		Class.forName("org.postgresql.Driver");
		
		    Connection con=DriverManager.getConnection
		                   ("jdbc:postgresql://localhost:5432/postgres","postgres","admin");
		
		    Statement stmt = con.createStatement();
		    String sql;
		    sql = "Select * from employee where empid = '" + id + "' and password = '" + password + "'";
		    ResultSet rs = stmt.executeQuery(sql);
		     while(rs.next()){
		    	 emp = new Employee();
		    	emp.setEmpId(rs.getString("EmpId"));
		    	emp.setEmpEmail(rs.getString("EmpEmail"));
		        emp.setEmpName(rs.getString("EmpName"));
		        emp.setPassword(rs.getString("Password"));
		          }
		    }
			catch(Exception e)
			{
			     e.printStackTrace();
			}
			  return emp;
		}
	
	public Admin AdminAvailable(String id, String password) {
		
		Admin adm = null;
		
			  try{
			
			 
			Class.forName("org.postgresql.Driver");
			
			    Connection con=DriverManager.getConnection
			                   ("jdbc:postgresql://localhost:5432/postgres","postgres","admin");
			
			    Statement stmt = con.createStatement();
			    String sql;
			    sql = "Select * from admin where adminid = '" + id + "' and adminpassword = '" + password + "'";
			    ResultSet rs = stmt.executeQuery(sql);
			     while(rs.next()){
			    	 adm = new Admin();
			    	adm.setAdminId(rs.getString("adminId"));
			    	adm.setAdminPassword(rs.getString("adminPassword"));
			          }
			    }
				catch(Exception e)
				{
				     e.printStackTrace();
				}
				  return adm;
			}
 

} 