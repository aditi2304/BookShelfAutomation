<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Data Tables</title>
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
                                <a class="nav-link" href="booktable.jsp">Books</a>
                            </li>
							<li class="nav-item">
                                <a class="nav-link" href="bookissueinfotable.jsp">BookIssueInfo</a>
                            </li>
							<li class="nav-item">
                                <a class="nav-link" href="transactionstable.jsp">Transactions</a>
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
	
	
	
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="admin/js/jquery-3.3.1.min.js"></script>
    <script src="admin/js/bootstrap.bundle.js"></script>
    <script src="admin/js/jquery.slimscroll.js"></script>
    <script src="admin/js/jquery.multi-select.js"></script>
    <script src="admin/js/main-js.js"></script>
    <script src="../../../../../cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="admin/js/dataTables.bootstrap4.min.js"></script>
    <script src="../../../../../cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="admin/js/buttons.bootstrap4.min.js"></script>
     <script src="admin/js/data-table.js"></script>
    <script src="../../../../../cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="../../../../../cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="../../../../../cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="../../../../../cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="../../../../../cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="../../../../../cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
    <script src="../../../../../cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
    <script src="../../../../../cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
    <script src="../../../../../cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
    
	
	
	
	
	
	
</body>
</html>