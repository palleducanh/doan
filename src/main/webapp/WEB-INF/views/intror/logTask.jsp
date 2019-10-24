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
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<jsp:include page="header.jsp"/>

<!-- page content -->
<div class="right_col" role="main">
    <!-- top tiles -->
    <%--			<div class="row tile_count">--%>
    <%--				<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">--%>
    <%--					<span class="count_top"><i class="fa fa-user"></i> Total Users</span>--%>
    <%--					<div class="count">2500</div>--%>
    <%--					<span class="count_bottom"><i class="green">4% </i> From last Week</span>--%>
    <%--				</div>--%>
    <%--				<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">--%>
    <%--					<span class="count_top"><i class="fa fa-clock-o"></i> Average Time</span>--%>
    <%--					<div class="count">123.50</div>--%>
    <%--					<span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>3% </i> From last Week</span>--%>
    <%--				</div>--%>
    <%--				<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">--%>
    <%--					<span class="count_top"><i class="fa fa-user"></i> Total Males</span>--%>
    <%--					<div class="count green">2,500</div>--%>
    <%--					<span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>--%>
    <%--				</div>--%>
    <%--				<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">--%>
    <%--					<span class="count_top"><i class="fa fa-user"></i> Total Females</span>--%>
    <%--					<div class="count">4,567</div>--%>
    <%--					<span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i> From last Week</span>--%>
    <%--				</div>--%>
    <%--				<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">--%>
    <%--					<span class="count_top"><i class="fa fa-user"></i> Total Collections</span>--%>
    <%--					<div class="count">2,315</div>--%>
    <%--					<span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>--%>
    <%--				</div>--%>
    <%--				<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">--%>
    <%--					<span class="count_top"><i class="fa fa-user"></i> Total Connections</span>--%>
    <%--					<div class="count">7,325</div>--%>
    <%--					<span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>--%>
    <%--				</div>--%>
    <%--			</div>--%>
    <!-- /top tiles -->

    <div class="row">
    </div>
    <br/>

    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Table design <small>Custom design</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false"><i
                                    class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Settings 1</a>
                                </li>
                                <li><a href="#">Settings 2</a>
                                </li>
                            </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>

                <div class="x_content">


                    <div class="table-responsive">


                        <!-- /.box-header -->
                        <h1 style="margin-left: 30%; color: blue">Bảng Thông tin Log Task Tiến Độ</h1>


                        <spring:url value="/task/${task.taskId}/taskprogress/save"
                                    var="addURL" />
                            <a class="btn btn-primary" href="${addURL}" role="button"><i
                                    class="glyphicon glyphicon-plus"></i> Log Task After a day work</a>
                    </div>
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>DateLog</th>
                            <th>Progress</th>
                            <th>Description</th>
                            <th>Id Task</th>
                            <th>Task Name</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${taskprogress}" var="taskprogress"
                                   varStatus="s">
                            <tr>
                                <td><c:out value="${s.index + 1}" /></td>
                                <td><c:out value="${taskprogress.dateLog}" /></td>
                                <td><c:out value="${taskprogress.progress}" />%</td>
                                <td><c:out value="${taskprogress.detailLog}" /></td>
                                <td><c:out value="${taskprogress.taskId.taskId}" /></td>
                                <td><c:out value="${taskprogress.taskId.taskName}" /></td>
                            </tr>
                        </c:forEach>
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
