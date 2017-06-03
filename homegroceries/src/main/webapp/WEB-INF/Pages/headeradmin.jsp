<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<title>Navigationbar</title>
	</head>
	<body>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
        			<span class="sr-only">Toggle navigation</span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
      			</button>
				<div class="navbar-header">
				<img style="width: 75px;height: 50px;border: 0;margin-top: 10px;float: left;" src="<c:url value="/resources/images/01.png"></c:url>">
					<a class="navbar-brand" href="index.jsp">GROCERY STORE</a>
				</div>
				<div class="collapse navbar-collapse" id="collapse-example">
					<ul class="nav navbar-nav">
						<url:url value="/pages/home.jsp" var="url"></url:url>
						<li><a href="${url }">Home</a></li>
						
						<li><a href="/pages/aboutus.jsp">About Us<span class="sr-only">You are in about us page.</span></a></li>
						<url:url value="/admin/product/productform" var="url"></url:url>
						<li><a href="${url }">Add Product</a></li>
						<url:url value="/all/product/productlist" var="url"></url:url>
						<li><a href="${url }">All Product</a></li>
						<url:url value="/admin/category/categoryform" var="url"></url:url>
						<li><a href="${url }">Category</a></li>
      				</ul>
      				<ul class="nav navbar-nav navbar-right">
						<li><a href="login.jsp">Sign-out<span class="sr-only">go to logout page.</span></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</body>
</html>  