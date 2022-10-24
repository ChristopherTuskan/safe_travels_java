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
<title>index</title>
</head>
<body>
	<div class="col-5 mx-auto">
		<h1 class="m-3">Safe Travels</h1>
		<table class="table table-bordered m-3">
			<tr>
				<th>Expense</th>
				<th>Vendor</th>
				<th>Amount</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="expense" items="${expenses}">
				<tr>
					<td><a href="expense/${expense.getId()}/show"><c:out value="${expense.getName()}"></c:out></a></td>
					<td><c:out value="${expense.getVendor()}"></c:out></td>
					<td><c:out value="${expense.getAmount()}"></c:out></td>
					<td><a href="/expense/${expense.getId()}/edit">edit</a></td>
					<td>
						<form action="/expense/${expense.getId()}/destroy" method="post">
    						<input type="hidden" name="_method" value="delete">
    						<input type="submit" value="Delete">
						</form>
					</td>
				</tr>
    		</c:forEach>
		</table>
		<h2 class="m-3">Add an Expense:</h2>
		<form:form action="/processExpense" method="post" modelAttribute="expense">
			<div class="form-group m-3">
				<form:label path="name">Expense Name:</form:label>
				<form:errors path="name"/>
				<form:input path="name" class="form-control"/>
			</div>
			<div class="form-group m-3">
				<form:label path="vendor">Vendor:</form:label>
				<form:errors path="vendor"/>
				<form:input path="vendor" class="form-control"/>
			</div>
			<div class="form-group m-3">
				<form:label path="amount">Amount:</form:label>
				<form:errors path="amount"/>
				<form:input type="double" path="amount" class="form-control"/>
			</div>
			<div class="form-group m-3">
				<form:label path="description">Description:</form:label>
				<form:errors path="description"/>
				<form:input path="description" class="form-control"/>
			</div>
			<input type="submit" value="Submit" class="m-3"/>
		</form:form>
	</div>
</body>
</html>