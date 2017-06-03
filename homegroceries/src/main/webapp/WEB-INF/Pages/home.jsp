<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<title>Project1</title>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="container-fluid">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
            	<!-- Indicators -->
            	<ol class="carousel-indicators">
                	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                	<li data-target="#myCarousel" data-slide-to="1"></li>
                	<li data-target="#myCarousel" data-slide-to="2"></li>
                	<li data-target="#myCarousel" data-slide-to="3"></li>
            	</ol>
            	<div class="carousel-inner" role="listbox">
            		<div class="item active">
                    	<img class="first-slide home-image" src="resources/images/pic1.jpg" alt="first slide" >
                    	<div class="container">
                        	<div class="carousel-caption">
                            	<h1>WELCOME TO GROCERY STORE</h1>
                            	<p>WE SAFE YOUR TIME</p>
                        	</div>
                    	</div>
                	</div>
                	<div class="item">
                    	<img class="second-slide home-image" src="resources/images/2.jpeg" alt="Second slide" >
                    	<div class="container">
                        	<div class="carousel-caption">
                            	<h1>FRESH FOODS </h1>
                            	<p>MAKE YOUR HEALTH GOOD</p>
                        	</div>
                    	</div>
                	</div>
                	<div class="item">
                    	<img class="third-slide home-image" src="resources/images/6.jpg" alt="third slide">
                    	<div class="container">
                        	<div class="carousel-caption">
                            	<h1>FIND EVERY PRODUCT</h1>
                            	<p>YOU WILL FIND EVERY THING YOU NEED</p>
                        	</div>
                    	</div>
                	</div>
                	<div class="item">
                    	<img class="forth-slide home-image " src="resources/images/5.jpg" alt="forthforth slide">
                    	<div class="container">
                        	<div class="carousel-caption">
                        	    <h1>OFFERS</h1>
                        	    <p>HAVE A GREAT SHOPPING WITH US</p>
                        	</div>
                    	</div>
                	</div>
                 	<div class="item">
                    	<img class="five-slide home-image " src="resources/images/7.jpg" alt="five slide">
                    	<div class="container">
                    	    <div class="carousel-caption">
                    	        <h1>SHIPPING</h1>
                    	        <p>SHIPPING  IN SHORTER PERIOD OF TIME</p>
                    	    </div>
                 	   </div>
               	 	</div>
            	</div>
            	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                	<span class="glyphicon glyphicon-chevron-left"></span>
                	<span class="sr-only">Previous</span>
            	</a>
            	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                	<span class="glyphicon glyphicon-chevron-right" ></span>
                	<span class="sr-only">Next</span>
            	</a>
        	</div>
        	<!-- /.carousel -->
		</div>
		<div>
			<br><%@ include file="footer.jsp" %>
		</div>
	</body>
</html>