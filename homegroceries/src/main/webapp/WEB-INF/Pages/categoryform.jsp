
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="container wrapper">
			<div class="container">
				<url:url var="addAction" value="/admin/category/savecategory"></url:url>
				<form:form action="${addAction }" modelAttribute="category" method="post">
					<table>
						 <tr>
						<div class="form-group">
						<label for="cId"></label>
						<form:hidden path="cId"></form:hidden>
					
					   </div>
						</tr> 
						<tr>
							<div class="form-group">
								<td><label for="categoryName">Enter Category name</label></td>
								<td><form:input path="categoryName"></form:input></td>
								<%-- <td><form:errors path="categoryName" cssStyle="color:#ff0000"></form:errors></td> --%>
							</div>
						</tr>
						<tr>	
							<td><input type="submit" value="Add Category"></td>
						</tr>
					</table>
			<br>
			<br>
				
<table border="thick" align="left" width="300" height="25">
					<tr>
						<th>Category Id</th>
						<th>Category Name</th>
						<th>Action</th>
					</tr>
					
						<c:forEach items="${categoryList}" var="c" >
						<tr/>
						<tr/>
						<tr>
							<td>${c.cId}</td>
							<td>${c.categoryName }</td>
						<%-- 	<url:url value="/all/category/viewcategory/${c.cid}" var="url"></url:url>
							<td><a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a>
							<url:url value="/admin/category/deletecategory/${c.cid}" var="url1"></url:url>
							<a href="${url1 }"><span class="glyphicon glyphicon-trash"></span></a>
							<url:url value="/admin/category/editcategory/${c.cid}" var="url2"></url:url>
							<a href="${url2 }"><span class="glyphicon glyphicon-pencil"></span></a></td> --%>
							
							<url:url value="/all/category/viewcategory/${c.cId }" var="url"></url:url>
							<td><a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a>
							<url:url value="/admin/category/deletecategory/${c.cId }" var="url1"></url:url>
							<a href="${url1 }"><span class="glyphicon glyphicon-trash"></span></a>
							<url:url value="/admin/category/editcategory/${c.cId}" var="url2"></url:url>
							<a href="${url2 }"><span class="glyphicon glyphicon-pencil"></span></a></td>
							
						</tr>
					</c:forEach>
				</table>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
					</form:form>
			</div>
		</div>
		<%@ include file="footer.jsp" %>		
	</body>
</html>