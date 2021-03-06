<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="images" value="/resources/images"></spring:url>



<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">

<title>Shopping Application - ${title}</title>

<script>
	window.menu ='${title}';
	
	window.contextRoot ='${contextRoot}';
</script>


<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<!-- Bootstrap DataTable -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>


	<div class="wrapper">
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<div class="content">
			<!-- Page Content -->
			<!-- Loading the home page content -->
			<c:if test="${userClickHome == true}">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Loading the about page content -->
			<c:if test="${userClickAbout == true}">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Loading the contact page content -->
			<c:if test="${userClickContact == true}">
				<%@include file="contact.jsp"%>
			</c:if>
			
			<!-- Loading the all-products page content -->
			<c:if test="${userClickAllProducts== true or userClickCategoryProducts== true}">
				<%@include file="listProducts.jsp"%>
			</c:if>
			
			<!-- Loading the single product page content -->
			<c:if test="${userClickShowProduct == true}">
				<%@include file="singleProduct.jsp"%>
			</c:if>
			
			<!-- Loading the Manage product page content -->
			<c:if test="${userClickManageProducts == true}">
				<%@include file="manageProducts.jsp"%>
			</c:if>

		</div>

		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- JQuery -->
		<script src="${js}/jquery.js"></script>
		
		<!-- JQuery Validator -->
		<script src="${js}/jquery.validate.js"></script>
		
		<!-- Bootstrap core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>
		
		<!-- DataTable Plugin -->
		<script src="${js}/jquery.dataTables.js"></script>
		
		<!-- DataTable Bootstrap script -->
		<script src="${js}/dataTables.bootstrap.js"></script>
		
		<!-- Bootbox -->
		<script src="${js}/bootbox.min.js"></script>
				
		<!-- self coded javascript -->
		<script src="${js}/myapp.js"></script>

	</div>
</body>

</html>
