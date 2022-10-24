<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>edit</title>
</head>
<body>
	<div class="col-3 mx-auto">
		<div class="d-flex justify-content-between">
			<h2 class="m-3">Expense Details</h2>
			<a href="/" class="m-4">go back</a>
		</div>
		<div class="d-flex">
			<div class="m-3">
				<p>Expense Name:</p>
				<p>Expense Description:</p>
				<p>Vendor:</p>
				<p>Amount Spent:</p>
			</div>
			<div class="m-3">
				<p>${expense.getName()}</p>
				<p>${expense.getDescription()}</p>
				<p>${expense.getVendor()}</p>
				<p>${expense.getAmount()}</p>
			</div>
		</div>
	</div>
</body>
</html>