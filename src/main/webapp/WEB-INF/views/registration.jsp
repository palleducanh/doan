<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico"/>

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

	<div class="login_wrapper">
		<div class="animate form login_form">
			<section class="login_content">
				<form:form modelAttribute="account" method="post" action="${registration}"
						    >
					<h1>Create Account</h1>
					<div>
						<form:input type="text" path="accountName" placeholder="email"
									class="form-control" />
					</div>
					<div>
						<form:input type="password" path="password"
									placeholder="Password" class="form-control" />
					</div>
					<div>
						<form:input type="role" path="roleId"
									placeholder="role" class="form-control" />
					</div>
					<div><br>
						<button type="submit"  class="btn btn-default submit">Register</button>
					</div>

					<div class="clearfix"></div>

					<div class="separator">
						<p class="change_link">Already a member ?
							<a href="/login" class="to_register"> Log in </a>
						</p>

						<div class="clearfix"></div>
						<br />

						<div>
							<h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
							<p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
						</div>
					</div>
				</form:form>
			</section>
		</div>
</body>
</html>