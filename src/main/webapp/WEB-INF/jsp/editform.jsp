<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.javainuse.model.Book"%>
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
                <a class="navbar" href="/adminlogout">LOGOUT</a>
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
                            <h2 class="pageheader-title">Book Table</h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Table</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Books</li>
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
                            <h5 class="card-header">Book Table</h5> <a href="/addNewBook"> Add New Book</a>
                            <div class="card-body">
                               <form action="/updateBook">
                               		<label>Book No</label>
                               		<input type="text" name="bookNo" value= ${book_id} readonly/>
                               		
                               		<label>Enter Book Name</label>
                               		<input type="text" name="bookName" >
                               		
                               		<label>Enter Book Author</label>
                               		<input type="text" name="author" >
                               		
                               		<label>Enter Book Edition</label>
                               		<input type="text" name="edition" >
                               		
                               		<button type="submit">Update</button>
                               </form>
                            </div>
                        </div>
                    </div>
	
	
	
	
	
	
	
	
</body>
</html>