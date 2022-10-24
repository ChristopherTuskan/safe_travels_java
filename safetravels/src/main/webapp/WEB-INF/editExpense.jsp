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
	<div class="col-5 mx-auto">
		<div class="d-flex justify-content-between">
			<h2 class="m-3">Edit an Expense:</h2>
			<a href="/" class="m-4">go back</a>
		</div>
		<form:form action="/expense/${expense.getId()}" method="post" modelAttribute="expense">
			<input type="hidden" name="_method" value="put">
			<div class="form-group m-3">
				<form:label path="name">Expense Name:</form:label>
				<form:errors path="name"/>
				<form:input path="name" value="${expense.getName()}" class="form-control"/>
			</div>
			<div class="form-group m-3">
				<form:label path="vendor">Vendor:</form:label>
				<form:errors path="vendor"/>
				<form:input path="vendor" value="${expense.getVendor()}" class="form-control"/>
			</div>
			<div class="form-group m-3">
				<form:label path="amount">Amount:</form:label>
				<form:errors path="amount"/>
				<form:input type="double" value="${expense.getAmount()}" path="amount" class="form-control"/>
			</div>
			<div class="form-group m-3">
				<form:label path="description">Description:</form:label>
				<form:errors path="description"/>
				<form:input path="description" value="${expense.getDescription()}" class="form-control"/>
			</div>
			<input type="submit" value="Submit" class="m-3"/>
		</form:form>
	</div>
</body>
</html>