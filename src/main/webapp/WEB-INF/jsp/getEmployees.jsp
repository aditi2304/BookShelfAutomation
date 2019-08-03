<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.javainuse.model.Book"%>
<html>
<head>
<title>Show Books</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	      
	<h3 style="color: red;">Show All Books</h3>
	<ul>
		<c:forEach var="listValue" items="${employees}">
			<li>${listValue.bookNo}</li>
		</c:forEach>
		<% ArrayList<Book> BookList = (ArrayList<Book>)request.getAttribute("books");
            //   HttpSession session = request.getSession();
    for(Book e : BookList)
    {
    	String bookid=e.getBookNo();
    	String bookname=e.getBookName();
    	
    	out.println(bookid);
    	out.println(bookname);
    	//String address="images/"+bookname+".jpg";
    	//System.out.println("book address isssssssss:"+address);
        //          out.print("<div class='col-lg-3 col-md-6'><div class='item'><img src='" +address+ "' alt='img'></img><h3>");
        //out.print(e.getBookName());  
        //out.print("</h3><!--<h6><span class='price'>Issue</span> <a href=''#''></a></h6>--><div class='hover'><a href='product-single.jsp?BookId="+bookid+"'><span><i class='fa fa-long-arrow-right' aria-hidden='true'></i></span></a></div></div></div> ");
    }
    %> 
	</ul>
</body>
</html>