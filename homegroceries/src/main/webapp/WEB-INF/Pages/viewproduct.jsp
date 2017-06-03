<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

</head>
<body ng-app="app" ng-controller="ProductController">
PRODUCT NAME:   ${product.name }         <br>
PRICE       :   ${product.price }         <br>
MANUFACTURER:   ${product.manufacturer }         <br>
DESCRIPTION :	${product.description }		<Br>

<url:url value="/all/product/productlist" var="url"></url:url>
<a href="${url }">Browse All Products</a>
<sec:authorize access="hasRole('ROLE_USER')">
<li id="csym"><button href="#" ng-click="addToCart(${product.id })">Add to cart</button></li>
</sec:authorize>
</body>
<%@include file="footer.jsp" %>
<c:url var="script6" value="/resources/js/controller.js"></c:url>
<script src="${script6}"></script> 

</html>