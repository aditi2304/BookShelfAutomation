<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.javainuse.model.Employee"%>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Requested By Table</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="admin/css/bootstrap.min.css">
    <link href="admin/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="admin/css/style1.css">
    <link rel="stylesheet" href="admin/css/fontawesome-all.css">
    <link rel="stylesheet" type="text/css" href="admin/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="admin/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="admin/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="admin/css/fixedHeader.bootstrap4.css">
</head>
<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
	
         <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
         <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="#">BOOKSHELF ADMIN</a>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
		<div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" href="/employeetable">Employee</a>
                            </li>
							<li class="nav-item">
                                <a class="nav-link" href="/booktable">Books</a>
                            </li>
							<li class="nav-item">
                                <a class="nav-link" href="/bookissueinfotable">BookIssueInfo</a>
                            </li>
							<li class="nav-item">
                                <a class="nav-link" href="/transactiontable">Transactions</a>
                            </li>
							<li class="nav-item">
                                <a class="nav-link" href="alerttable.jsp">Alert</a>
                            </li>
							<li class="nav-item">
                                <a class="nav-link" href="requestedbooks.jsp">RequestedBooks</a>
                            </li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
	
	
	<div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Employee Table</h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Table</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Employee</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- basic table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">Employee Table</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered first">
                                        <thead>
                                            <tr>
                                            	<th>EmpId</th>
                                            <th>EmpName</th>
                                            <th>EmailId</th>
                                            <th>Password</th>
                                           
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <% 
                                            
                                            ArrayList<Employee> emplist = (ArrayList<Employee>)request.getAttribute("employee_list");
                                        for(Employee emp : emplist)
                                        {
                                        	String empid=emp.getEmpId();
                                        	String empname=emp.getEmpName();
                                        	String empemail=emp.getEmpEmail();
                                        	String emppassword=emp.getPassword();
                                        	
                                      
                                           // out.print("<div class='col-lg-3 col-md-6'><div class='item'><img src='" +address+ "' alt='img'></img><h3>");
                                            //out.print(e.getBookName());  
                                            //out.print("</h3><!--<h6><span class='price'>Issue</span> <a href=''#''></a></h6>--><div class='hover'><a href='product-single.jsp?BookId="+bookid+"'><span><i class='fa fa-long-arrow-right' aria-hidden='true'></i></span></a></div></div></div> ");
                                        
                                          
                                        out.print("<tr>");  
                                            	
                                                 out.print("<td>");  
                                                out.print(empid) ;
                                                 out.print("</td>");  
                                                 out.print("<td>");  
                                                 out.print(empname) ;
                                                  out.print("</td>"); 
                                                  out.print("<td>");  
                                                  out.print(empemail) ;
                                                   out.print("</td>"); 
                                                   out.print("<td>");  
                                                   out.print(emppassword) ;
                                                    out.print("</td>"); 
                                                    
                                                   
                                                    out.print("<tr>");  
                                                    }
                                            %>
                                         
                                           
                                        </tbody>
                                        
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
	
	
	
	
	
	
	
	
</body>
</html>