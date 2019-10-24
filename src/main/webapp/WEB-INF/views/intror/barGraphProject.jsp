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
            <!-- Info Boxes -->

            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">

                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                        <li class="active">Here</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <c:if test="${not empty notification}">
                        <div class="callout callout-info lead">
                            <h4>Notification !</h4>
                            <p>
                                    ${notification}
                            </p>
                        </div>
                    </c:if>
                    <script
                            src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
                    <!-- Latest compiled and minified JavaScript -->
                    <script
                            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                    <script src="https://code.highcharts.com/highcharts.js"></script>
                    <script src="https://code.highcharts.com/modules/export-data.js"></script>
                    <script src="https://code.highcharts.com/modules/exporting.js"></script>
                    <div id="linechart"
                         style="min-width: 310px; height: 800px; margin: 0 auto"></div>
                    <script>
                        $(function(){
                            Highcharts.chart('linechart', {
                                chart : {
                                    type : 'line'
                                },
                                title : {
                                    text : 'Progress Project'
                                },
                                subtitle : {
                                    text : 'Đồ Thị Tiến độ của Project'
                                },
                                xAxis : {
                                    categories : ${listdatelog}
                                },
                                yAxis : {
                                    title : {
                                        text : 'Tiến độ của Project (%)'
                                    }
                                },
                                plotOptions : {
                                    line : {
                                        dataLabels : {
                                            enabled : true
                                        },
                                        enableMouseTracking : false
                                    }
                                },
                                series : [
                                    {
                                        name : ' progress expect',
                                        data : ${expect}
                                    },
                                    {
                                        name : 'progress actual',
                                        data : ${actual}
                                    } ]
                            });
                        });
                    </script>
                </section>


                </section>
            </div>
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
