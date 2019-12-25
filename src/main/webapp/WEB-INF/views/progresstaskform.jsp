<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
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

	<!-- Custom Theme Style -->
	<link href="http://localhost:8080/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<jsp:include page="header.jsp"/>

<!-- page content -->
<div class="right_col" role="main">
	<div class="x_content">

		<div class="" role="tabpanel" data-example-id="togglable-tabs">
			<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
				<li class="active"><a href="/task/${task.taskId}/taskprogress/save"
					   style="color: black">Update Progress Task</a></li>
				<li><a href="/task/${task.taskId}/displayBarGraph"
					   style="color: black">Progress Task</a></li>
				<li><a href="/task/${task.taskId}/logtask"
					   style="color: black">Log Process for Task</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
					<!-- Info Boxes -->
					<div class="row">
						<table class="table table-striped">
							<tbody>
							<tr>
								<td colspan="1">
									<h2>Log Task For Daily Work Form</h2> <spring:url
										value="/task/${task.taskId}/taskprogress/save" var="saveURL" />
									<fieldset>

										<form:form modelAttribute="taskprogress" method="POST"
												   action="${saveURL}" cssClass="well form-horizontal"
												   onsubmit="return validatedatelog() && validatenumber()">

											<div id="taskInfo">

												<div class="form-group" style="display: none">
													<label class="control-label col-sm-2 requiredField"
														   for="date"> Task Id <span class="asteriskField">
															* </span>
													</label>
													<div class="col-md-8 inputGroupContainer">
														<div class="input-group">
															<span class="input-group-addon"><i
																	class="glyphicon glyphicon-book"></i></span>
															<form:input path="taskId" cssClass="form-control"
																		id="taskId" value="${task.taskId}" readonly="true" />
															<form:input path="taskId" cssClass="form-control"
																		id="startdate" value="${task.dateStart}" readonly="true" />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-sm-2 requiredField"
														   for="date"> Date Log <span class="asteriskField">
															* </span>
													</label>
													<div class="col-md-8 inputGroupContainer">
														<div class="input-group">
															<div class="input-group-addon">
																<i class="fa fa-calendar"> </i>
															</div>
															<form:input class="form-control" id="dateLog"
																		name="dateLog" path="dateLog" type="date" />
														</div>
													</div>
												</div>

												<div class="form-group">
													<label class="control-label col-sm-2 requiredField">
														Detail Log Task </label>
													<div class="col-md-8 inputGroupContainer">
														<div class="input-group">
															<span class="input-group-addon"><i
																	class="glyphicon glyphicon-list-alt"></i></span>
															<form:textarea path="detailLog" id="detailLog"
																		   placeholder="Detail Log Task" class="form-control"
																		   required="true" rows="5"></form:textarea>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-sm-2 requiredField"
														   for="date"> Progress<span class="asteriskField">
															* </span>
													</label>
													<div class="col-md-8 inputGroupContainer">
														<div class="input-group">
															<span class="input-group-addon"><i
																	class="glyphicon glyphicon-book"></i></span>
															<form:input path="progress" cssClass="form-control"
																		id="progress" placeholder="progress %" required="true" />
														</div>
													</div>
												</div>
												<div class="text-center">
													<button type="submit" class="btn btn-primary">Save</button>
													<a type="button" class="btn btn-primary"
													   href="/task/${task.taskId}/displayBarGraph"
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
				<div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
					<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo
						booth letterpress, commodo enim craft beer mlkshk aliquip</p>
				</div>
				<div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
					<p>xxFood truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo
						booth letterpress, commodo enim craft beer mlkshk </p>
				</div>
			</div>
			<%--</div>--%>
		</div>
	</div>


	<!-- jQuery -->
	<script src="http://localhost:8080/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="http://localhost:8080/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="http://localhost:8080/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="http://localhost:8080/vendors/nprogress/nprogress.js"></script>
	<!-- Chart.js -->
	<script src="http://localhost:8080/vendors/Chart.js/dist/Chart.min.js"></script>
	<!-- gauge.js -->
	<script src="http://localhost:8080/vendors/gauge.js/dist/gauge.min.js"></script>
	<!-- bootstrap-progressbar -->
	<script src="http://localhost:8080/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="http://localhost:8080/vendors/iCheck/icheck.min.js"></script>
	<!-- Skycons -->
	<script src="http://localhost:8080/vendors/skycons/skycons.js"></script>
	<!-- Flot -->
	<script src="http://localhost:8080/vendors/Flot/jquery.flot.js"></script>
	<script src="http://localhost:8080/vendors/Flot/jquery.flot.pie.js"></script>
	<script src="http://localhost:8080/vendors/Flot/jquery.flot.time.js"></script>
	<script src="http://localhost:8080/vendors/Flot/jquery.flot.stack.js"></script>
	<script src="http://localhost:8080/vendors/Flot/jquery.flot.resize.js"></script>
	<!-- Flot plugins -->
	<script src="http://localhost:8080/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
	<script src="http://localhost:8080/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
	<script src="http://localhost:8080/vendors/flot.curvedlines/curvedLines.js"></script>
	<!-- DateJS -->
	<script src="http://localhost:8080/vendors/DateJS/build/date.js"></script>
	<!-- JQVMap -->
	<script src="http://localhost:8080/vendors/jqvmap/dist/jquery.vmap.js"></script>
	<script src="http://localhost:8080/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script src="http://localhost:8080/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="http://localhost:8080/vendors/moment/min/moment.min.js"></script>
	<script src="http://localhost:8080/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="http://localhost:8080/build/js/custom.min.js"></script>

</body>
</html>
