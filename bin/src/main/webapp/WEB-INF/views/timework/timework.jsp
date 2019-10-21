<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<base href="http://localhost:8080/" >
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Starter</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
<link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">
<link href="../static/images/logo.png" href="@{/images/logo.png}"
	rel="shortcut icon" />
<link rel="stylesheet"
	href="../plugins/fullcalendar/fullcalendar.min.css">
<link rel="stylesheet"
	href="../plugins/fullcalendar/fullcalendar.print.css" media="print">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous" />
<!-- Custom style -->
<link href="../static/css/style.css" href="@{/css/style.css}"
	rel="stylesheet" />
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- Main Header -->
		<header class="main-header">

			<!-- Logo -->
			<a href="/welcome" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>R</b>Đ</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Rạng Đông</b> Company</span>
			</a>

			<!-- Header Navbar -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<li class="dropdown messages-menu">
							<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-envelope-o"></i> <span
								class="label label-success">4</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 4 messages</li>
								<li>
									<!-- inner menu: contains the messages -->
									<ul class="menu">
										<li>
											<!-- start message --> <a href="#">
												<div class="pull-left">
													<!-- User Image -->
													<img src="dist/img/hung.jpg" class="img-circle"
														alt="User Image">
												</div> <!-- Message title and timestamp -->
												<h4>
													Support Team <small><i class="fa fa-clock-o"></i> 5
														mins</small>
												</h4> <!-- The message -->
												<p>Why not buy a new awesome theme?</p>
										</a>
										</li>
										<!-- end message -->
									</ul> <!-- /.menu -->
								</li>
								<li class="footer"><a href="#">See All Messages</a></li>
							</ul>
						</li>
						<!-- /.messages-menu -->

						<!-- Notifications Menu -->
						<li class="dropdown notifications-menu">
							<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <span
								class="label label-warning">10</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 10 notifications</li>
								<li>
									<!-- Inner Menu: contains the notifications -->
									<ul class="menu">
										<li>
											<!-- start notification --> <a href="#"> <i
												class="fa fa-users text-aqua"></i> 5 new members joined
												today
										</a>
										</li>
										<!-- end notification -->
									</ul>
								</li>
								<li class="footer"><a href="#">View all</a></li>
							</ul>
						</li>
						<!-- Tasks Menu -->
						<li class="dropdown tasks-menu">
							<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-flag-o"></i> <span
								class="label label-danger">9</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 9 tasks</li>
								<li>
									<!-- Inner menu: contains the tasks -->
									<ul class="menu">
										<li>
											<!-- Task item --> <a href="#"> <!-- Task title and progress text -->
												<h3>
													Design some buttons <small class="pull-right">20%</small>
												</h3> <!-- The progress bar -->
												<div class="progress xs">
													<!-- Change the css width attribute to simulate progress -->
													<div class="progress-bar progress-bar-aqua"
														style="width: 20%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">20% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
									</ul>
								</li>
								<li class="footer"><a href="#">View all tasks</a></li>
							</ul>
						</li>
						<!-- User Account Menu -->
						<li class="dropdown user user-menu">
							<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <!-- The user image in the navbar-->
								<img src="dist/img/hung.jpg" class="user-image" alt="User Image">
								<!-- hidden-xs hides the username on small devices so only the image appears. -->
								<span class="hidden-xs">Lê Tử Hùng</span>
						</a>
							<ul class="dropdown-menu">
								<!-- The user image in the menu -->
								<li class="user-header"><img src="dist/img/hung.jpg"
									class="img-circle" alt="User Image">

									<p>
										Lê Tử Hùng - Web Developer <small>Member since Nov.
											2019</small>
									</p></li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="row">
										<div class="col-xs-4 text-center">
											<a href="#">Followers</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Sales</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Friends</a>
										</div>
									</div> <!-- /.row -->
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">Profile</a>
									</div>
									<div class="pull-right">
										<form action="/logout" method="get">
											<button class="btn btn-md btn-danger btn-block"
												name="registration" type="Submit">Logout</button>
										</form>
									</div>
								</li>
							</ul>
						</li>
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">

			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">

				<!-- Sidebar user panel (optional) -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="dist/img/hung.jpg" class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>Lê Tử Hùng</p>
						<!-- Status -->
						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>

				<!-- search form (Optional) -->
				<form action="/welcome" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->

				<!-- Sidebar Menu -->
				<ul class="sidebar-menu">
					<li class="header">HEADER</li>
					<!-- Optionally, you can add icons to the links -->
					<li class="active"><a href="/account" th:href="@{/account}"><i
							class="glyphicon glyphicon-lock"></i> <span>Account
								Management</span></a></li>

					<li class="active"><spring:url value="/department"
							var="listURL" /> <a class="" href="${listURL}" role="list"><i
							class="glyphicon glyphicon-home"></i> <span>Department
								Management</span></a></li>

					<li class="active"><spring:url value="/staff" var="listURL" />
						<a class="" href="${listURL}" role="list"><i
							class="glyphicon glyphicon-user"></i> <span>Staff
								Management</span></a></li>

					<li class="treeview"><a href="/project"><i
							class="glyphicon glyphicon-glass"></i> <span>Project
								Management</span> <i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a href="/project"><i
									class="glyphicon glyphicon-folder-open"></i> Project Management</a></li>
							<li><a href="#"><i
									class="glyphicon glyphicon-folder-open"></i> Task Management</a></li>
						</ul></li>

					<li class="active"><spring:url value="/aboutapp" var="listURL" />
						<a class="" href="${listURL}" role="list"><i
							class="glyphicon glyphicon-info-sign"></i> <span>Introduce
								About Web</span></a></li>

					<li class="active"><spring:url value="/aboutteam"
							var="listURL" /> <a class="" href="${listURL}" role="list"><i
							class="glyphicon glyphicon-camera"></i> <span>Introduce
								About Team</span></a></li>

					<li class="active"><spring:url value="/feedback" var="listURL" />
						<a class="" href="${listURL}" role="list"><i
							class="glyphicon glyphicon-question-sign"></i> <span>Help
								Us !</span></a></li>
				</ul>
				<!-- /.sidebar-menu -->
			</section>
			<!-- /.sidebar -->
		</aside>


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
				 <small>Lịch làm việc của : <strong style="font-size: 20px;">${staffs.fullName}</strong></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="/welcome"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Calendar</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-4" style="width: 37%">
						<div class="box box-solid">
							<div class="box-header with-border">
								<c:if test="${not empty notification}">
									<div class="callout callout-info lead">
										<h4>Notification !</h4>
										<p>${notification}</p>
									</div>
								</c:if>
								<h3 class="box-title">S
								chedule Form</h3>
							</div>
							<div class="box-body">
								<table >
									<tbody>
										<tr>
											<td colspan="1">
												<h2 style="color: Green; position: center;">Create Events</h2> <spring:url
													value="staff/${staff}/timework/saveevent" var="saveURL" />
												<fieldset>
													<form:form modelAttribute="event" method="POST"
														action="${saveURL}" cssClass="well form-horizontal"
														onsubmit="return validatedateproject()">

														<div class="form-group" style="display: none">
															<label class="control-label col-sm-2 requiredField">
																ID Event <span class="asteriskField"> * </span>
															</label>
															<c:choose>
																<c:when test="${not empty event.id }">
																	<div class="col-md-8 inputGroupContainer">
																		<div class="input-group">
																			<span class="input-group-addon"><i
																				class="glyphicon glyphicon-tags"></i></span>
																			<form:input path="id" cssClass="form-control"
																				required="required" readonly="true" />
																		</div>
																	</div>
																</c:when>
																<c:otherwise>
																	<div class="col-md-8 inputGroupContainer">
																		<div class="input-group">
																			<span class="input-group-addon"><i
																				class="glyphicon glyphicon-tags"></i></span>
																			<form:input id="id" path="id" cssClass="form-control"
																				readonly="true" />
																		</div>
																	</div>

																</c:otherwise>
															</c:choose>
														</div>
														<div class="form-group">
															<label class="control-label col-sm-2 requiredField"
																for="date"> Title
															</label>
															<div class="col-md-8 inputGroupContainer">
																<div class="input-group" style="width: 270px;">
																	<span class="input-group-addon"><i
																		class="glyphicon glyphicon-book"></i></span>
																	<form:input path="title" cssClass="form-control"
																		id="title" placeholder="title name" required="true" />
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-sm-2 requiredField"
																for="date">Start
															</label>
															<div class="col-md-8 inputGroupContainer">
																<div class="input-group">
																	<div class="input-group-addon">
																		<i class="fa fa-calendar"> </i>
																	</div>
																	<form:input class="form-control" id="createDate"
																		name="createDate" path="start" type="datetime-local" />
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-sm-2 requiredField"
																for="date">End
															</label>
															<div class="col-md-8 inputGroupContainer">
																<div class="input-group">
																	<div class="input-group-addon">
																		<i class="fa fa-calendar"> </i>
																	</div>
																	<form:input class="form-control" id="end" name="end"
																		path="end" type="datetime-local" />
																</div>
															</div>
														</div>

														<div class="form-group">
															<label class="control-label col-sm-2">
																Desc
															</label>
															<div class="col-md-8 inputGroupContainer">
																<div class="input-group" style="width: 270px;">
																	<span class="input-group-addon"><i
																		class="glyphicon glyphicon-list-alt"></i></span>
																	<form:textarea path="description" id="discription"
																		placeholder="description" class="form-control"
																		required="true" rows="5" ></form:textarea>
																</div>
															</div>
														</div>

														<div class="text-center">
															<button type="submit" class="btn btn-primary" >Save</button>
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
					<!-- /.col -->
					<div class="col-md-6" style=" width: 64%;margin-left: -1.5%">
						<div class="box box-primary">
							<div class="box-body no-padding" >
								<!-- THE CALENDAR -->

								<div id="calendar" ></div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /. box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
			<!-- To the right -->
			<div class="pull-right hidden-xs">GVHD: Nguyễn Thanh Bình</div>
			<!-- Default to the left -->
			<strong>Team Graduation Project <a href="/welcome">Rạng Đông
					Company</a>
			</strong> Hùng - Thành - Đại.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li class="active"><a href="#control-sidebar-home-tab"
					data-toggle="tab"><i class="fa fa-home"></i></a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-gears"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane active" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript::;"> <i
								class="menu-icon fa fa-birthday-cake bg-red"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

									<p>Will be 23 on April 24th</p>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript::;">
								<h4 class="control-sidebar-subheading">
									Custom Template Design <span
										class="label label-danger pull-right">70%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger"
										style="width: 70%"></div>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>

						<div class="form-group">
							<label class="control-sidebar-subheading"> Report panel
								usage <input type="checkbox" class="pull-right" checked>
							</label>

							<p>Some information about this general settings option</p>
						</div>
						<!-- /.form-group -->
					</form>
				</div>
				<!-- /.tab-pane -->
			</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>

		<!-- ./wrapper -->

		<!-- jQuery 2.2.0 -->
		<script src="../plugins/jQuery/jQuery-2.2.0.min.js"></script>
		<!-- Bootstrap 3.3.6 -->
		<script src="../bootstrap/js/bootstrap.min.js"></script>
		<!-- jQuery UI 1.11.4 -->
		<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		<!-- Slimscroll -->
		<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script src="../plugins/fastclick/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="../dist/js/app.min.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="../dist/js/demo.js"></script>
		<!-- fullCalendar 2.2.5 -->
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
		<script src="../plugins/fullcalendar/fullcalendar.min.js"></script>
		<!-- Page specific script -->
		<script>
			$(function() {

				/* initialize the external events
				 -----------------------------------------------------------------*/
				function ini_events(ele) {
					ele.each(function() {

						// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
						// it doesn't need to have a start or end
						var eventObject = {
							title : $.trim($(this).text())
						// use the element's text as the event title
						};

						// store the Event Object in the DOM element so we can get to it later
						$(this).data('eventObject', eventObject);

						// make the event draggable using jQuery UI
						$(this).draggable({
							zIndex : 1070,
							revert : true, // will cause the event to go back to its
							revertDuration : 0
						//  original position after the drag
						});

					});
				}

				ini_events($('#external-events div.external-event'));

				/* initialize the calendar
				 -----------------------------------------------------------------*/
				//Date for the calendar events (dummy data)
				var staff_id = ${staff};
				var date = new Date();
				var d = date.getDate(), m = date.getMonth(), y = date
						.getFullYear();

				$(document)
						.ready(
								function() {

									$('#calendar')
											.fullCalendar(
													{
														header : {
															left : 'prev,next today',
															center : 'title',
															right : 'month,agendaWeek,agendaDay'
														},
														defaultDate : '2019-05-29',
														editable : true,
														eventLimit : true, // allow "more" link when too many events
														events : {
															url : '/staff/'
																	+ staff_id
																	+ '/timework',
															type : 'GET',
															error : function() {
																alert('there was an error while fetching events!');
															},
															color : 'red', // a non-ajax option
															textColor : 'white' // a non-ajax option
														},
														drop : function(date,
																allDay) {
															// retrieve the dropped element's stored Event Object
															var originalEventObject = $(
																	this)
																	.data(
																			'eventObject');

															// we need to copy it, so that multiple events don't have a reference to the same object
															var copiedEventObject = $
																	.extend({},
																			originalEventObject);

															// assign it the date that was reported
															copiedEventObject.start = date;
															copiedEventObject.allDay = allDay;
															copiedEventObject.backgroundColor = $(
																	this)
																	.css(
																			"background-color");
															copiedEventObject.borderColor = $(
																	this)
																	.css(
																			"border-color");

															// render the event on the calendar
															// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
															$('#calendar')
																	.fullCalendar(
																			'renderEvent',
																			copiedEventObject,
																			true);

															// is the "remove after drop" checkbox checked?
															if ($(
																	'#drop-remove')
																	.is(
																			':checked')) {
																// if so, remove the element from the "Draggable Events" list
																$(this)
																		.remove();
															}
														}
													});

								});

				/* ADDING EVENTS */
				var currColor = "#3c8dbc"; //Red by default
				//Color chooser button
				var colorChooser = $("#color-chooser-btn");
				$("#color-chooser > li > a").click(function(e) {
					e.preventDefault();
					//Save color
					currColor = $(this).css("color");
					//Add color effect to button
					$('#add-new-event').css({
						"background-color" : currColor,
						"border-color" : currColor
					});
				});
				$("#add-new-event").click(function(e) {
					e.preventDefault();
					//Get value and make sure it is not null
					var val = $("#new-event").val();
					if (val.length == 0) {
						return;
					}

					//Create events
					var event = $("<div />");
					event.css({
						"background-color" : currColor,
						"border-color" : currColor,
						"color" : "#fff"
					}).addClass("external-event");
					event.html(val);
					$('#external-events').prepend(event);

					//Add draggable funtionality
					ini_events(event);

					//Remove event from text input
					$("#new-event").val("");
				});
			});
		</script>
</body>
</html>
