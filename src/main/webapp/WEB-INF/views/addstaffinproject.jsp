<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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
				<li role="presentation" class="active"><a href="/project/detail/${project.projectId}">Home</a>
				</li>
				<li role="presentation" class=""><a href="/project/${project.projectId}/staff" >View
					list staff of project</a>
				</li>
				<li role="presentation" class=""><a href="/project/${project.projectId}/task">View
					list task of project</a>
				</li>
				<li role="presentation" class=""><a href="/project/${project.projectId}/progress" >Project Progress</a>
				</li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
					<h2>ADD STAFF IN PROJECT HAVE NAME :
						${project.projectName}</h2>
					<fieldset>
						<form:form modelAttribute="staff" method="POST"
								   action="project/${project.projectId}/staff/add/${staff.staffId}"
								   cssClass="well form-horizontal">

							<c:choose>
								<c:when test="${not empty staff }">
									<div class="form-group">
										<label class="col-md-2 control-label">Select Staff<span
												style="color: red"> * : </span></label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
																<span class="input-group-addon"><i
																		class="glyphicon glyphicon-th-list"></i></span>
												<form:select path="staffId" class="form-control"
															 style="height:30px" id="sel1" required="required">
													<form:option value="" label="--- Select ---" />
													<form:options items="${staffs}" />
												</form:select>
												<p>
											</div>
										</div>
									</div>

									<div class="text-center">
										<button type="submit" class="btn btn-primary">Add
											Staff In project</button>
										<a type="button" class="btn btn-primary"
										   href="/project/${project.projectId}/staff"
										   onclick="return confirm('Bạn chắc chắn muốn ngừng thực hiện tác vụ không ?')">Cancel</a>
									</div>
								</c:when>
								<c:otherwise>
									<div class="alert alert-danger alert-dismissible">
										<button type="button" class="close" data-dismiss="alert"
												aria-hidden="true">&times;</button>
										<h4>
											<i class="icon fa fa-ban"></i> Không có nhân viên !
										</h4>
										Các nhân viên hiện tại đều đã nằm trong dự án hoặc không
										có nhân viên nào trong công ty.

									</div>
									<a type="button" href="project/${project.projectId}/staff">Quay
										lại trang quản lý nhân viên !</a>
								</c:otherwise>
							</c:choose>
						</form:form>
					</fieldset>
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
	<%--<div class="right_col" role="main">--%>
	<%--	<h3 style="color: green;">Thông Tin Chi Tiết Của Project : ${project.projectName} </h3>--%>
	<%--	<!-- Info Boxes -->--%>
	<%--	<div class="row">--%>
	<%--		<div class="card">--%>
	<%--			<div class="card-body">--%>
	<%--				<form>--%>
	<%--					<div class="row">--%>
	<%--						<div class="col-md-5 pr-1">--%>
	<%--							<div class="form-group">--%>
	<%--								<label>Company</label>--%>
	<%--								<input type="text" class="form-control" disabled="" placeholder="Company" value="Creative PTIT">--%>
	<%--							</div>--%>
	<%--						</div>--%>
	<%--						<div class="col-md-3 px-1">--%>
	<%--							<div class="form-group">--%>
	<%--								<label>Project Name</label>--%>
	<%--								<input type="text" class="form-control" placeholder="Username" value="${project.projectName}">--%>
	<%--							</div>--%>
	<%--						</div>--%>
	<%--						<div class="col-md-4 pl-1">--%>
	<%--							<div class="form-group">PROJECT OUTPUT--%>
	<%--								<label for="exampleInputEmail1">Project Output</label>--%>
	<%--								<input type="email" class="form-control" placeholder="Email" value="${project.projectOutput}">--%>
	<%--							</div>--%>
	<%--						</div>--%>
	<%--					</div>--%>
	<%--					<div class="row">--%>
	<%--						<div class="col-md-6 pr-1">--%>
	<%--							<div class="form-group">--%>
	<%--								<label>START DATE</label>--%>
	<%--								<input type="text" class="form-control" placeholder="Company" value="${project.startDate}">--%>
	<%--							</div>--%>
	<%--						</div>--%>
	<%--						<div class="col-md-6 pl-1">--%>
	<%--							<div class="form-group">--%>
	<%--								<label>DEADLINE</label>--%>
	<%--								<input type="text" class="form-control" placeholder="Last Name" value="${project.deadlineDate}">--%>
	<%--							</div>--%>
	<%--						</div>--%>
	<%--					</div>--%>
	<%--					<div class="row">--%>
	<%--						<div class="col-md-12">--%>
	<%--							<div class="form-group">--%>
	<%--								<label>FINISH DATE</label>--%>
	<%--								<input type="text" class="form-control" placeholder="Home Address" <c:choose>--%>
	<%--									<c:when test="${not empty project.finishDate}">--%>
	<%--										value="${project.finishDate}"--%>
	<%--								</c:when>--%>
	<%--								<c:otherwise>--%>
	<%--									   value="chưa có thời gian kết thúc thực tế"--%>
	<%--								</c:otherwise>--%>
	<%--								</c:choose>"--%>
	<%--								>--%>
	<%--							</div>--%>
	<%--						</div>--%>
	<%--					</div>--%>
	<%--					<div class="row">--%>
	<%--						<div class="col-md-4 pr-1">--%>
	<%--							<div class="form-group">--%>
	<%--								<label>AMOUNT STAFF</label>--%>
	<%--								<input type="text" class="form-control" placeholder="City" value="${project.staffProject.size()}">--%>
	<%--							</div>--%>
	<%--						</div>--%>
	<%--						<div class="col-md-4 px-1">--%>
	<%--							<div class="form-group">--%>
	<%--								<label>AMOUNT TASK</label>--%>
	<%--								<input type="text" class="form-control" placeholder="Country" value="${project.task.size()}">--%>
	<%--							</div>--%>
	<%--						</div>--%>
	<%--						<div class="col-md-4 pl-1">--%>
	<%--							<div class="form-group">--%>
	<%--								<label>STATE</label>--%>
	<%--								<input type="number" class="form-control" placeholder="${project.discription}">--%>
	<%--							</div>--%>
	<%--						</div>--%>
	<%--					</div>--%>
	<%--&lt;%&ndash;					<div class="row">&ndash;%&gt;--%>
	<%--&lt;%&ndash;						<div class="col-md-12">&ndash;%&gt;--%>
	<%--&lt;%&ndash;							<div class="form-group">&ndash;%&gt;--%>
	<%--&lt;%&ndash;								<label>About Me</label>&ndash;%&gt;--%>
	<%--&lt;%&ndash;								<textarea rows="4" cols="80" class="form-control" placeholder="Here can be your description" value="Mike">Lamborghini Mercy, Your chick she so thirsty, I'm in that two seat Lambo.</textarea>&ndash;%&gt;--%>
	<%--&lt;%&ndash;							</div>&ndash;%&gt;--%>
	<%--&lt;%&ndash;						</div>&ndash;%&gt;--%>
	<%--&lt;%&ndash;					</div>&ndash;%&gt;--%>
	<%--&lt;%&ndash;					<button type="submit" class="btn btn-info btn-fill pull-right">Update Profile</button>&ndash;%&gt;--%>
	<%--					<div class="clearfix"></div>--%>
	<%--				</form>--%>
	<%--			</div>--%>
	<%--		</div>--%>
	<%--	</div>--%>




	<%--	</div>--%>

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
