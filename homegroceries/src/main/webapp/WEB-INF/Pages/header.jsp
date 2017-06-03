<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		 <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
		<title>Navigationbar</title>
	</head>
	<body>
		<nav class="navbar navbar-light" style="background-color:white;">
		<img style="width: 85px;height: 70px;border: 0;margin-top: 10px;float: left;" src="<c:url value="/resources/images/pic01.jpg"></c:url>">
			<div class="container-fluid">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
        			<span class="sr-only">Toggle navigation</span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
      			</button>
				<div class="navbar-header">
					<a class="navbar-brand" href="#">GROCERY STORE</a>
				</div>
				<div class="collapse navbar-collapse" id="collapse-example">
					<ul class="nav navbar-nav">
						<url:url value="/" var="url"></url:url>
						<li><a href="${url }">Home</a></li>
						
						<security:authorize access="hasRole('ROLE_ADMIN')">
  <url:url value="/admin/product/productform" var="url"></url:url>
   <li><a href="${url }">Add New Product</a></li>
  </security:authorize>
						<url:url value="/all/product/productlist" var="url"></url:url>
						<li><a href="${url }">All Product</a></li>
 						<li class="dropdown">
							<a href="" class="dropdown-toggle" data-toggle="dropdown">Select by Category<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<c:forEach var="c" items="${categories }">
									<li><a href="<c:url value="/all/product/productsByCategory?searchCondition=${c.categoryName }"></c:url>" >${c.categoryName }</a></li>
								</c:forEach>
							</ul>
						</li>
						  <c:if test="${pageContext.request.userPrincipal.name!=null }">
						  </c:if>

    <security:authorize access="hasRole('ROLE_USER')">
    <c:url var="cart" value="/cart/getCartId"></c:url>
       
    <li><a href="${cart }" ><span class="on">Cart</span></a></li>
    
    </security:authorize>
    
    
    
    <!-- when user not logged in -->
    <c:if test="${pageContext.request.userPrincipal.name==null }">
     <c:url var="cart" value="/beforeCart/getBeforeLogin"></c:url>
    <li><a href="${cart }"><span class="on" >Cart <span id="show"></span></span></a></li></c:if>
    
    
						<c:if test="${pageContext.request.userPrincipal.name!=null }">			
 							<li><a href="">Welcome ${pageContext.request.userPrincipal.name }</a></li>
 						</c:if>
 	 					<url:url value="/all/registrationform" var="url"></url:url>
  						<c:if test="${pageContext.request.userPrincipal.name==null }">
 							<li><a href="${url }">Register</a></li>
 							<url:url value="/login" var="url"></url:url>
  							<li><a href="${url }">Sign in</a></li>
  						</c:if>   
 						<c:if  test="${pageContext.request.userPrincipal.name!=null }">
  							<li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>
  						</c:if>
  						<url:url value="/aboutus" var="url"></url:url>
						<li><a href="${url }">About Us</a></li>
						
  						
					</ul>
				</div>
			</div>
		</nav>
	</body>
</html>  