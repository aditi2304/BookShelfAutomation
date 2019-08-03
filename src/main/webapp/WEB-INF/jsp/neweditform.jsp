<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <title>Edit Book Details </title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="admin/css/bootstrap.min.css">
    <link href="admin/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="admin/css/style.css">
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
                                <a class="nav-link" href="employeetable.html">Employee</a>
                            </li>
							
							<li class="nav-item">
                                <a class="nav-link" href="booktable.html">Books</a>
                            </li>
							
							<li class="nav-item">
                                <a class="nav-link" href="bookissueinfotable.html">BookIssueInfo</a>
                            </li>
							<li class="nav-item">
                                <a class="nav-link" href="transactionstable.html">Transactions</a>
                            </li>
							<li class="nav-item">
                                <a class="nav-link" href="alerttable.html">Alert</a>
                            </li>
							<li class="nav-item">
                                <a class="nav-link" href="requestedbooks.html">RequestedBooks</a>
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
                            <h2 class="pageheader-title"> </h2>
                 
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Books</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Edit Books</li>
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
                        <!-- validation form -->
                        <!-- ============================================================== -->
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Book Edit Form</h5>
                                <div class="card-body">
                                    <form class="needs-validation" novalidate>
                                        <div class="row">
                                            
									
									
									
									 <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                <label for="validationCustom01">Book No:</label>
                                                <input type="text" class="form-control" id="validationCustom01"  required>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
												
                                            </div>
											<br><br>
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                <label for="validationCustom02">Book name:</label>
                                                <input type="text" class="form-control" id="validationCustom02"   required>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>
 <br><br>
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                <label for="validationCustom03">Author:</label>
                                                <input type="text" class="form-control" id="validationCustom03"   required>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
											</div>
												<br><br>

                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                <label for="validationCustom04">Edition:</label>
                                                <input type="text" class="form-control" id="validationCustom04"   required>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
 
 
												</div>
												<br><br>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                               <a href="#"> <button class="btn btn-primary" type="submit">Submit form</button></a>
                                            </div> -->
                                        </div>
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									

                                            
                                        </div>
                                
                                           
                                    </form>
                                </div>
							</div>
						</div>
					</div>
             </div>    
		</div>
                        <!-- ============================================================== -->
                        <!-- end validation form -->
                        <!-- ============================================================== -->
                   
                    
    <script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
    </script>





</body>
</html>