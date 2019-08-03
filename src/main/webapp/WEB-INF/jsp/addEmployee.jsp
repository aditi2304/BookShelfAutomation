<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
</head>
<jsp:include page="menu.jsp" />
<body>
	<h3 style="color: red;">Add New Book</h3>

	<div id="addNewBook">
		<form:form action="/addNewBook" method="post"
			modelAttribute="book">
			<p>
				<label>Enter Book no</label>
				<form:input  path="bookNo" />
			</p>
			<p>
				<label>Enter Book name</label>
				<form:input  path="bookName" />
			</p>
			<p>
				<label>Enter Book author</label>
				<form:input  path="bookAuthor" />
			</p>
			<p>
				<label>Enter Book Edition</label>
				<form:input  path="bookEdition" />
			</p>
			<input type="SUBMIT" value="Submit" />
		</form:form>
	</div>
</body>
</html>
