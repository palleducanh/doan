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
	<base href="http://localhost:8080/" >
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
									<h2>Department Form</h2> <spring:url value="/department/save"
																		 var="saveURL" />
									<fieldset>
										<form:form modelAttribute="department" method="POST"
												   action="${saveURL}" cssClass="well form-horizontal"
												   onsubmit="return checkmaxdepartment()">
											<div class="input-group" style="display: none">
														<span class="input-group-addon"><i
																class="glyphicon glyphicon-tags"></i></span>
												<form:input path="check" cssClass="form-control"
															required="required" readonly="true" />
											</div>
											<div id="taskInfo">
												<div class="form-group" style="display: none">
													<label class="control-label col-sm-2 requiredField">
														ID Department <span class="asteriskField"> * </span>
													</label>
													<c:choose>
														<c:when test="${not empty department.departmentId }">
															<div class="col-md-8 inputGroupContainer">
																<div class="input-group">
																			<span class="input-group-addon"><i
																					class="glyphicon glyphicon-tags"></i></span>
																	<form:input path="departmentId"
																				cssClass="form-control" required="required"
																				readonly="true" />
																</div>
															</div>
														</c:when>
														<c:otherwise>
															<div class="col-md-8 inputGroupContainer">
																<div class="input-group">
																			<span class="input-group-addon"><i
																					class="glyphicon glyphicon-tags"></i></span>
																	<form:input id="departmentId" path="departmentId"
																				cssClass="form-control" readonly="true" />
																</div>
															</div>

														</c:otherwise>
													</c:choose>
												</div>
												<div class="form-group">
													<label class="control-label col-sm-2 requiredField">
														Department Name <span class="asteriskField"> * </span>
													</label>
													<div class="col-md-8 inputGroupContainer">
														<div class="input-group">
																	<span class="input-group-addon"><i
																			class="glyphicon glyphicon-home"></i></span>
															<form:input path="departmentName"
																		placeholder="Department Name" cssClass="form-control"
																		required="required" />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-sm-2 requiredField"
														   for="date"> Manager Name <span
															class="asteriskField"> * </span>
													</label>
													<div class="col-md-8 inputGroupContainer">
														<div class="input-group">
																	<span class="input-group-addon"><i
																			class="glyphicon glyphicon-user"></i></span>
															<form:input path="managerName" cssClass="form-control"
																		id="managerName" placeholder="Manager Name"
																		required="true" />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-sm-2 requiredField">
														Description </label>
													<div class="col-md-8 inputGroupContainer">
														<div class="input-group">
																	<span class="input-group-addon"><i
																			class="glyphicon glyphicon-list-alt"></i></span>
															<form:textarea path="discription" id="discription"
																		   placeholder="description" class="form-control"
																		   required="true" rows="5"></form:textarea>
														</div>
													</div>
												</div>
												<div class="text-center">
													<button type="submit" class="btn btn-primary">Save</button>
													<a type="button" class="btn btn-primary"
													   href="/department"
													   onclick="return confirm('Bạn chắc chắn muốn ngừng thực hiện tác vụ không ?')">Cancel
													</a>
												</div>
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
