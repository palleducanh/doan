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
	<div class="x_content">

		<div class="" role="tabpanel" data-example-id="togglable-tabs">
			<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
				<li role="presentation" ><a href="/project/detail/${project.projectId}">Home</a>
				</li>
				<li role="presentation" class="active"><a href="/project/${project.projectId}/staff" >View
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
<%--					<h3 style="color: green;">Thông Tin Chi Tiết Của Project : ${project.projectName} </h3>--%>
					<!-- Info Boxes -->
<%--					<div class="row">--%>
						<c:if test="${not empty notification}">
							<div class="callout callout-info lead">
								<h4>Notification !</h4>
								<p>${notification}</p>
							</div>
						</c:if>
<%--						<div class="col-xs-12">--%>
<%--							<div class="box">--%>
<%--								<div class="box-header">--%>
									<h3 class="box-title">
										Danh sách Staff thuộc Project :
										<c:out value="${project.projectName}" />
									</h3>
<%--								</div>--%>
								<div class="box-header">
									<a class="btn btn-primary"
									   href="http://localhost:8080/project/<c:out value="${project.projectId}"/>/staff/add"
									   role="button"><i class="glyphicon glyphicon-plus"></i> Add
										Staff In Project</a>
								</div>
								<!-- /.box-header -->
<%--								<div class="box-body">--%>
									<table id="example1" class="table table-bordered table-striped">
										<thead>
										<tr>
											<th>#</th>
											<th>First Name</th>
											<th>Full Name</th>
											<th>Skill</th>
											<th>Possition</th>
											<th>Email</th>
											<th>Action</th>

											<th>Delete Staff In Project</th>
											<th>Action</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach items="${staffs }" var="staff" varStatus="s">
											<tr>
												<td><c:out value="${s.index + 1}" /></td>
												<td><c:out value="${staff.firstName}" /></td>
												<td><a href="/staff/detail/${staff.staffId}"><c:out
														value="${staff.fullName}" /></a></td>
												<td><c:out value="${staff.skill}" /></td>
												<td><c:out value="${staff.possition}" /></td>
												<td><c:out value="${staff.email}" /></td>
												<td><a
														href="project/${project.projectId}/staff/${staff.staffId}/task/add">tạo
													task cho staff</a></td>
<%--												<td><a href="/staff/${staff.staffId}/timeworks">log--%>
<%--													work</a></td>--%>
<%--												<td><a--%>
<%--														href="http://localhost:8080/project/${project.projectId}/staff/${staff.staffId}/delete"--%>
<%--														onclick="return confirm('Bạn chắc chắn xoá Staff có tên : ${staff.fullName} ?');"><i--%>
<%--														class="glyphicon glyphicon-trash"></i> </a></td>--%>
												<td><spring:url
														value="http://localhost:8080/project/${project.projectId}/staff/${staff.staffId}/delete"
														var="deleteURL"/>
													<a href="${deleteURL}" class="btn btn-danger btn-xs"><i class="fa fa-trash-o" onclick="return confirm('Bạn chắc chắn xoá staff có tên : ${staff.fullName} ?');"></i> Delete </a>
												</td>
												<td><a
														href="project/${project.projectId}/staff/${staff.staffId}/task">List
													Task Of Staff</a></td>
											</tr>
										</c:forEach>
										</tbody>
									</table>

								</div>
								<!-- /.box-body -->
							</div>
						</div>
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
