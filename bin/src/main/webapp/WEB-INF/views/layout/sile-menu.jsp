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
				<form action="#" method="get" class="sidebar-form">
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
					<li class="active"><a href="/account"><i
							class="glyphicon glyphicon-lock"></i><span>Account Management</span></a></li>
							
					<li class="active"><spring:url value="/department"
							var="listURL" /> <a class="" href="${listURL}" ><i
							class="glyphicon glyphicon-home"></i>
							 <span>Department Management</span></a></li>
							
					<li class="active"><spring:url value="/staff" var="listURL" />
						<a class="" href="${listURL}" ><i
							class="glyphicon glyphicon-user"></i> <span>Staff Management</span></a></li>
							
					<li class="treeview"><a href="/project"><i
							class="glyphicon glyphicon-glass"></i> <span>Project
								Management</span> <i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a href="/project"><i class="glyphicon glyphicon-folder-open"></i> Project Management</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-folder-open"></i> Task Management</a></li>
						</ul>
					</li>
					
					<li class="active"><spring:url value="/aboutapp" var="listURL" />
						<a class="" href="${listURL}" ><i class="glyphicon glyphicon-info-sign"></i> 
						<span>Introduce About Web</span></a></li>
							
					<li class="active"><spring:url value="/aboutteam"
							var="listURL" /> <a class="" href="${listURL}" ><i class="glyphicon glyphicon-camera"></i>
							<span>Introduce About Team</span></a></li>
							
					<li class="active"><spring:url value="/feedback/add" var="listURL" />
						<a href="${listURL}" ><i class="glyphicon glyphicon-question-sign"></i>
						<span>Help Us !</span></a></li>
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
					Page Header <small>Optional description</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>