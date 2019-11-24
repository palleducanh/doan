<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="http://localhost:8080/">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

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
	<section class="content">
		<div class="container">
			<img alt="" src="images/task.png">
			<table class="table table-striped">
				<tbody>
				<tr>
					<td colspan="1">
						<h2>Assign Task</h2> <spring:url
							value="project/${task.projectId.projectId}/task/save"
							var="saveURL" />
						<fieldset>
							<form:form modelAttribute="task" method="POST"
									   action="${saveURL}" cssClass="well form-horizontal"
									   onsubmit="return validatedate()">
								<div id="staffCombobox">
									<div class="form-group">
										<label class="control-label col-sm-2 requiredField">
											Assign to staff <span class="asteriskField"> * </span>
										</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
															<span class="input-group-addon"><i
																	class="glyphicon glyphicon-user"></i></span>
												<form:select path="staffId" class="form-control">
													<form:option value="0" label="--- Assign ---" />
													<form:options items="${staffs}" />
												</form:select>
											</div>
										</div>
									</div>
								</div>

								<div id="ListPreviousTaskCombobox" style="display: none">
									<div class="form-group">
										<label class="control-label col-sm-2 requiredField">
											Previous Task <span class="asteriskField"> * </span>
										</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
															<span class="input-group-addon"><i
																	class="glyphicon glyphicon-user"></i></span>
												<form:select path="previousTask" class="form-control"
															 multiple="true">
													<form:options items="${listPreviousTask}" />
												</form:select>
											</div>
										</div>
									</div>
								</div>
								<div id="taskInfo">
									<div class="form-group" style="display: none">
										<label class="control-label col-sm-2 requiredField">
											ID Task <span class="asteriskField"> * </span>
										</label>
										<c:choose>
											<c:when test="${not empty task.taskId }">
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
																	<span class="input-group-addon"><i
																			class="glyphicon glyphicon-user"></i></span>
														<form:input path="taskId" cssClass="form-control"
																	required="required" readonly="true" />
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<div class="col-md-8 inputGroupContainer">
													<div class="input-group">
																	<span class="input-group-addon"><i
																			class="glyphicon glyphicon-user"></i></span>
														<form:input id="taskId" path="taskId"
																	cssClass="form-control" readonly="true" />
													</div>
												</div>

											</c:otherwise>
										</c:choose>
									</div>
									<div class="form-group" style="display: none">
										<label class="control-label col-sm-2 requiredField">
											Create by <span class="asteriskField"> * </span>
										</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
															<span class="input-group-addon"><i
																	class="glyphicon glyphicon-user"></i></span>
												<form:input path="nameCreate" value="${username}"
															cssClass="form-control" required="required"
															readonly="true" />
											</div>
										</div>
									</div>
									<div class="form-group" style="display: none">
										<label class="control-label col-sm-2 requiredField"
											   for="date"> Task Name <span class="asteriskField">
															* </span>
										</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
															<span class="input-group-addon"><i
																	class="glyphicon glyphicon-user"></i></span>
												<form:input path="taskName" cssClass="form-control"
															id="taskName" placeholder="Task name" required="true" />
											</div>
										</div>
									</div>
									<div class="form-group" style="display: none">
										<label class="control-label col-sm-2 requiredField"
											   for="date"> Create Date <span
												class="asteriskField"> * </span>
										</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<div class="input-group-addon">
													<i class="fa fa-calendar"> </i>
												</div>
												<form:input class="form-control" id="dateCreate"
															name="dateCreate" path="dateCreate" type="date" />
											</div>
										</div>
									</div>
									<div class="form-group" style="display: none">
										<label class="control-label col-sm-2 requiredField"
											   for="date"> Start Date <span class="asteriskField">
															* </span>
										</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<div class="input-group-addon">
													<i class="fa fa-calendar"> </i>
												</div>
												<form:input class="form-control" id="dateStart"
															name="dateStart" path="dateStart" type="date" />
											</div>
										</div>
									</div>
									<div class="form-group" style="display: none">
										<label class="control-label col-sm-2 requiredField"
											   for="date"> Deadline <span class="asteriskField">
															* </span>
										</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<div class="input-group-addon">
													<i class="fa fa-calendar"> </i>
												</div>
												<form:input class="form-control" id="deadlineDate"
															name="deadlineDate" path="deadlineDate" type="date" />
											</div>
										</div>
									</div>
									<div class="form-group" style="display: none">
										<label class="control-label col-sm-2 requiredField"
											   for="date"> Finish Actual Date <span
												class="asteriskField"> * </span>
										</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<div class="input-group-addon">
													<i class="fa fa-calendar"> </i>
												</div>
												<form:input class="form-control" id="finishDate"
															name="finishDate" path="finishDate" type="date" />
											</div>
										</div>
									</div>

									<div class="form-group" style="display: none">
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
									<c:if test="${not empty task.taskId }">
										<label class="control-label col-sm-2 requiredField"
											   style="display: none"> Task Progress <span
												class="asteriskField"> * </span>
										</label>
										<div class="form-group" style="display: none">
											<div class="col-md-8 inputGroupContainer">
												<div class="input-group">
																<span class="input-group-addon"><i
																		class="glyphicon glyphicon-th-list"></i></span>
													<form:select path="taskState" class="form-control"
																 id="sel1" style="height:30px" required="required">
														<form:option value="" label="--- Select ---" />
														<form:option value="0" label="0%" />
														<form:option value="10" label="10%" />
														<form:option value="20" label="20%" />
														<form:option value="30" label="30%" />
														<form:option value="40" label="40%" />
														<form:option value="50" label="50%" />
														<form:option value="60" label="60%" />
														<form:option value="70" label="70%" />
														<form:option value="80" label="80%" />
														<form:option value="90" label="90%" />
														<form:option value="100" label="100%" />
													</form:select>
												</div>
											</div>
										</div>
									</c:if>

									<div class="form-group" style="display: none">
										<label class="control-label col-sm-2 requiredField">
											Task Ouput <span class="asteriskField"> * </span>
										</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
															<span class="input-group-addon"><i
																	class="glyphicon glyphicon-folder-open"></i></span>
												<form:input path="taskOutput" cssClass="form-control"
															placeholder="task Ouput" />
											</div>
										</div>
										<form:input type="hidden" path="projectId"
													cssClass="form-control" required="required"
													placeholder="task Ouput" />
									</div>

									<div class="text-center">
										<button type="submit" class="btn btn-primary">Assign</button>
										<a type="button" class="btn btn-warning"
										   href="/project/${task.projectId.projectId}/task"
										   onclick="return confirm('Bạn chắc chắn muốn ngừng thực hiện tác vụ không ?')">Cancel</a>
									</div>
								</div>
							</form:form>
						</fieldset>
					</td>
				</tr>
				</tbody>
			</table>
		</div>
	</section>
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
