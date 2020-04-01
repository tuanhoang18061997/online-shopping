<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!--Add spring url tag library -->

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<!-- Lấy đường dẫn thư mục gốc -->


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>GEARVN - ${title}</title>
<script>
	window.menu = '${title}';
</script>
<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<link href="${css}/bootstrap-litera-theme.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">
<link rel="shortcut icon"
	href="https://theme.hstatic.net/1000026716/1000440777/14/favicon.png?v=10451"
	type="image/png" />
<script src="https://kit.fontawesome.com/f1dd65ed94.js"
	crossorigin="anonymous" type="text/javascript"></script>
</head>

<body>

	<div class="wrapper">
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>
		<!-- Page Content -->
		
		<div class="content">
		<!-- Loading the home content  -->
		<c:if test="${userClickHome == true }">
			<!-- Khi user gõ đường dẫn http://localhost:8080/onlineshopping/home sẽ về trang chủ  -->
			<%@include file="home.jsp"%>
		</c:if>
		<c:if test="${userClickAbout == true }">
			<!-- Khi user gõ đường dẫn http://localhost:8080/onlineshopping/home sẽ về trang chủ  -->
			<%@include file="about.jsp"%>
		</c:if>
		<c:if test="${userClickContact == true }">
			<!-- Khi user gõ đường dẫn http://localhost:8080/onlineshopping/home sẽ về trang chủ  -->
			<%@include file="contact.jsp"%>
		</c:if>
		</div>
		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>
		<!-- Bootstrap core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>
		<!-- Self coded javascript  -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>
