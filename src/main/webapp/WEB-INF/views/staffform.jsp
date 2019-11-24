<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico"/>

	<title>Gentelella Alela! | </title>

	<!-- Bootstrap -->
	<link href="http://localhost:8080/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link href="http://localhost:8080/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- NProgress -->
	<link href="http://localhost:8080/vendors/nprogress/nprogress.css" rel="stylesheet">
	<!-- iCheck -->
	<link href="http://localhost:8080/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

	<!-- bootstrap-progressbar -->
	<link href="http://localhost:8080/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
	<!-- JQVMap -->
	<link href="http://localhost:8080/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
	<!-- bootstrap-daterangepicker -->
	<link href="http://localhost:8080/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

	<!-- Custom Theme Style -->
	<link href="http://localhost:8080/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<jsp:include page="header.jsp" />


<div class="right_col" role="main">
	<div class="">

		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">

					<div class="x_content">
						<br />
						<table class="table table-striped">
							<tbody>
							<tr>
								<td colspan="1">
									<!-- 								<img alt="" src="/images/staff.png" --> <!-- 									style="width: 100%; height: 120%"> -->
									<h2>Staff Form</h2> <spring:url value="/staff/save"
																	var="saveURL" />
									<fieldset>
										<form:form modelAttribute="staff" method="POST"
												   action="${saveURL}" cssClass="well form-horizontal"
												   onsubmit="return checkPhone() && validateEmail() && validateGender() && checkmaxsize() && checkemailissame()">

											<div class="form-group" style="display: none">
												<label class="col-md-2 control-label">ID Staff<span
														style="color: red"> * </span></label>
												<c:choose>
													<c:when test="${not empty staff.staffId }">
														<div class="col-md-8 inputGroupContainer">
															<div class="input-group">
																<span class="input-group-addon"><i
																		class="glyphicon glyphicon-tags"></i></span>
																<form:input path="staffId" cssClass="form-control"
																			required="required" readonly="true" />
															</div>
														</div>
													</c:when>
													<c:otherwise>
														<div class="col-md-8 inputGroupContainer">
															<div class="input-group">
																<span class="input-group-addon"><i
																		class="glyphicon glyphicon-tags"></i></span>
																<form:input id="staffId" path="staffId"
																			cssClass="form-control" required="required"
																			readonly="true" />
															</div>
														</div>

													</c:otherwise>
												</c:choose>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">First Name <span
														style="color: red"> * </span></label>
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
														<span class="input-group-addon"><i
																class="glyphicon glyphicon-user"></i></span>
														<form:input path="firstName" cssClass="form-control"
																	id="firstname" placeholder="First name" required="true" />
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Last Name <span
														style="color: red"> * </span></label>
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
														<span class="input-group-addon"><i
																class="glyphicon glyphicon-user"></i></span>
														<form:input path="lastName" cssClass="form-control"
																	id="lastname" placeholder="Last name" required="true" />
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Full Name <span
														style="color: red"> * </span></label>
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
														<span class="input-group-addon"><i
																class="glyphicon glyphicon-user"></i></span>
														<form:input path="fullName" cssClass="form-control"
																	id="fullname" placeholder="Full name" />
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Email <span
														style="color: red"> * </span></label>
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
														<span class="input-group-addon"><i
																class="glyphicon glyphicon-envelope"></i></span>
														<form:input path="email" cssClass="form-control"
																	id="email" placeholder="Email" required="true" />
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Position <span
														style="color: red"> * </span></label>
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
														<span class="input-group-addon"><i
																class="glyphicon glyphicon-home"></i></span>
														<form:input path="possition" cssClass="form-control"
																	id="possition" placeholder="Possition" />
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Gender<span
							  							style="color: red"> * </span></label>
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
														<span class="input-group-addon"><i
																class="glyphicon glyphicon-user"></i></span>
														<form:select path="gender" class="form-control"
																	 style="height:30px" id="sel1" required="required">
															<form:option value="male" label="--- Select ---" />
															<form:option value="male" lable="male" />
															<form:option value="female" lable="female" />
														</form:select>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Skill </label>
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
														<span class="input-group-addon"><i
																class="glyphicon glyphicon-book"></i></span>
														<form:select path="skillStaffId" class="form-control"
																	 style="height:30px" id="sel1" required="required">
															<form:option value="" label="--- Select ---" />
															<form:options items="${skills }" />
														</form:select>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2 control-label">Phone Number</label>
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
														<span class="input-group-addon"><i
																class="glyphicon glyphicon-earphone"></i></span>
														<form:input path="telephone" cssClass="form-control"
																	id="telephone" placeholder="Phone Number"  />
													</div>
												</div>
											</div>

											<div class="form-group">
												<label class="col-md-2 control-label">Department
													Name <span style="color: red"> * </span>
												</label>
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
														<span class="input-group-addon"><i
																class="glyphicon glyphicon-th-list"></i></span>
														<form:select path="departmentId" class="form-control"
																	 style="height:30px" id="sel1" required="required">
															<form:option value="" label="--- Select ---" />
															<form:options items="${departments }" />
														</form:select>
													</div>
												</div>
											</div>
											<c:choose>
												<c:when test="${not empty staff.accountId}">
													<div class="form-group" style="display: none">
														<label class="col-md-2 control-label">Account Name<span
																style="color: red"> * </span></label>
														<div class="col-md-8 inputGroupContainer">
															<div class="input-group">
																<span class="input-group-addon"><i
																		class="glyphicon glyphicon-th-list"></i></span>
																<form:select path="accountId" class="form-control"
																			 id="sel1" style="height:30px" required="required">
																	<form:option value="" label="--- Select ---" />
																	<form:options items="${accounts }" id="accounts" />
																</form:select>
															</div>
														</div>
													</div>
												</c:when>
												<c:otherwise>
													<div class="form-group">
														<label class="col-md-2 control-label">Account Name<span
																style="color: red"> * </span></label>
														<div class="col-md-8 inputGroupContainer">
															<div class="input-group">
																<span class="input-group-addon"><i
																		class="glyphicon glyphicon-th-list"></i></span>
																<form:select path="accountId" class="form-control"
																			 id="sel1" style="height:30px" required="required">
																	<form:option value="" label="--- Select ---" />
																	<form:options items="${accounts }" id="accounts" />
																</form:select>
															</div>
														</div>
													</div>
												</c:otherwise>
											</c:choose>


											<div class="form-group">
												<label class="col-md-2 control-label">Description</label>
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
														<span class="input-group-addon"><i
																class="glyphicon glyphicon-list-alt"></i></span>
														<form:textarea path="discription" id="discription"
																	   placeholder="discription" class="form-control"
																	   required="true" rows="5"></form:textarea>
													</div>
												</div>
											</div>

											<div class="text-center">
												<button type="submit" class="btn btn-primary">Save</button>
												<a type="button" class="btn btn-primary" href="/staff"
												   onclick="return confirm('Bạn chắc chắn muốn ngừng thực hiện tác vụ không ?')">Cancel</a>
											</div>
										</form:form>
									</fieldset>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		</div>


	</div>


</div>

<!-- jQuery -->
<script src="../vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="../vendors/nprogress/nprogress.js"></script>
<!-- Chart.js -->
<script src="../vendors/Chart.js/dist/Chart.min.js"></script>
<!-- gauge.js -->
<script src="../vendors/gauge.js/dist/gauge.min.js"></script>
<!-- bootstrap-progressbar -->
<script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- iCheck -->
<script src="../vendors/iCheck/icheck.min.js"></script>
<!-- Skycons -->
<script src="../vendors/skycons/skycons.js"></script>
<!-- Flot -->
<script src="../vendors/Flot/jquery.flot.js"></script>
<script src="../vendors/Flot/jquery.flot.pie.js"></script>
<script src="../vendors/Flot/jquery.flot.time.js"></script>
<script src="../vendors/Flot/jquery.flot.stack.js"></script>
<script src="../vendors/Flot/jquery.flot.resize.js"></script>
<!-- Flot plugins -->
<script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
<script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
<script src="../vendors/flot.curvedlines/curvedLines.js"></script>
<!-- DateJS -->
<script src="../vendors/DateJS/build/date.js"></script>
<!-- JQVMap -->
<script src="../vendors/jqvmap/dist/jquery.vmap.js"></script>
<script src="../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
<script src="../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="../vendors/moment/min/moment.min.js"></script>
<script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

<!-- Custom Theme Scripts -->
<script src="../build/js/custom.min.js"></script>

</body>
</html>
