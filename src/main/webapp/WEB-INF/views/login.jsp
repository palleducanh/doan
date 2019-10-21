<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Gentelella Alela! | </title>

	<!-- Bootstrap -->
	<link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- NProgress -->
	<link href="vendors/nprogress/nprogress.css" rel="stylesheet">
	<!-- Animate.css -->
	<link href="vendors/animate.css/animate.min.css" rel="stylesheet">

	<!-- Custom Theme Style -->
	<link href="build/css/custom.min.css" rel="stylesheet">
</head>

<body class="login">
<div>
	<a class="hiddenanchor" id="signup"></a>
	<a class="hiddenanchor" id="signin"></a>
	<c:if test="${not empty param.error}">
		<div class="alert alert-danger" role="alert">Sai Tên Ho?c M?t
			Kh?u !</div>
	</c:if>
	<c:if test="${not empty param.logout}">
		<div class="alert alert-success" role="alert">??ng xu?t thành công !</div>
	</c:if>
	<div class="login_wrapper">
		<div class="animate form login_form">
			<section class="login_content">
				<form action="/login" method="POST">
					<h1>Login Form</h1>
					<div>
						<input type="email" class="form-control" id="email" name="email"
							   placeholder="Email">
					</div>
					<div>
						<input type="password" class="form-control" id="password"
							   name="password" placeholder="Password">
					</div>
					<div>
						<button type="submit" class="btn btn-primary btn-block btn-flat">Sign
							In</button>
						<a class="reset_pass" href="#">Lost your password?</a>
					</div>

					<div class="clearfix"></div>

					<div class="separator">
						<p class="change_link">New to site?
							<a href="/registration" class="to_register"> Create Account </a>
						</p>

						<div class="clearfix"></div>
						<br />

						<div>
							<h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
							<p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
						</div>
					</div>
				</form>
			</section>
		</div>

		<div id="register" class="animate form registration_form">
			<section class="login_content">

			</section>
		</div>
	</div>
</div>
</body>
</html>
