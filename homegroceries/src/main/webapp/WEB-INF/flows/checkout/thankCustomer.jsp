<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/Pages/header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
   body{
       margin-top:20%;
    }
    h1{
      text-transform:uppercase;
       font-weight:bold;
       font-size:35px;
    }
    a{
      font-size:25px;
      color:red;
        font-weight:bold;
      text-align:center;
      text-decoration:none;
    }
    a:hover{
      font-size:28px;
        text-decoration:none;
        color:red;
    }
</style>
</head>
<body>
    <h1>Thank you for your business!!!</h1>
    <h1>Your order will be shipped within two days</h1>
    <a href="<c:url value="/all/product/getallproducts"></c:url>">SHOP NOW</a>
</body>
</html>