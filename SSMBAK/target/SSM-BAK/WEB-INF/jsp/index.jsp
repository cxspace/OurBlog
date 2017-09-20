<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<!doctype html>
<html lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Propeller_Admin_Dashboard">
<meta content="width=device-width, initial-scale=1, user-scalable=no" name="viewport">
<title>CxBlog</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/themes/images/favicon.ico">

<!-- Google icon -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- Bootstrap css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
<!-- Propeller css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/propeller.min.css">

<!-- Propeller theme css-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/css/propeller-theme.css" />

<!-- Propeller admin theme css-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/css/propeller-admin.css">
</head>



<body>
<!-- Header Starts -->
<!--Start Nav bar -->
<nav class="navbar navbar-inverse navbar-fixed-top pmd-navbar pmd-z-depth">

	<div class="container-fluid">
			
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
		<a href="javascript:void(0);" class="btn btn-sm pmd-btn-fab pmd-btn-flat pmd-ripple-effect pull-left margin-r8 pmd-sidebar-toggle"><i class="material-icons">menu</i></a>	
				

		  <a href="${pageContext.request.contextPath}/main/index" class="navbar-brand navbar-brand-custome">CxSpaceBlog</a>
		</div>

		<form action="${pageContext.request.contextPath}/blog/index_search" method="post">
			<div class="pull-right table-title-top-action">
				<div class="pmd-textfield pull-right">
					<input type="text" name="title" id="exampleInputAmount" class="form-control" placeholder="...">
				</div>

				<a href="javascript:doSearch()">
					<i class="material-icons md-dark pmd-sm">keyboard_arrow_right</i>
				</a>

			</div>
		</form>


		</div><!-- /.navbar-collapse -->
	<div class="pmd-sidebar-overlay"></div>

</nav><!--End Nav bar -->


<!-- Header Ends -->

<!-- Sidebar Starts -->
<div class="pmd-sidebar-overlay"></div>

<!-- Left sidebar -->
<aside class="pmd-sidebar sidebar-default pmd-sidebar-slide-push pmd-sidebar-left pmd-sidebar-open bg-fill-darkblue sidebar-with-icons" role="navigation">
	<ul class="nav pmd-sidebar-nav">

		
		<li>
			<a class="pmd-ripple-effect" href="${pageContext.request.contextPath}/main/index">
				<i class="media-left media-middle"><svg version="1.1" x="0px" y="0px" width="19.83px" height="18px" viewBox="287.725 407.535 19.83 18" enable-background="new 287.725 407.535 19.83 18"
	 xml:space="preserve">
<g>
	<path fill="#C9C8C8" d="M307.555,407.535h-9.108v10.264h9.108V407.535z M287.725,407.535v6.232h9.109v-6.232H287.725z
		 M296.834,415.271h-9.109v10.264h9.109V415.271z M307.555,419.303h-9.108v6.232h9.108V419.303z"/>
</g>
</svg></i>
				<span class="media-body">主页</span>
			</a>
		</li>

		<c:if test="${sessionScope.USER.name != null}">


			<li>
				<a class="pmd-ripple-effect" href="${pageContext.request.contextPath}/blog/addUI">
					<i class="media-left media-middle"><svg version="1.1" x="0px" y="0px" width="19.83px" height="18px" viewBox="287.725 407.535 19.83 18" enable-background="new 287.725 407.535 19.83 18"
															xml:space="preserve">
<g>
	<path fill="#C9C8C8" d="M307.555,407.535h-9.108v10.264h9.108V407.535z M287.725,407.535v6.232h9.109v-6.232H287.725z
		 M296.834,415.271h-9.109v10.264h9.109V415.271z M307.555,419.303h-9.108v6.232h9.108V419.303z"/>
</g>
</svg></i>
					<span class="media-body">写博客</span>
				</a>
			</li>

			<li>
				<a class="pmd-ripple-effect" href="${pageContext.request.contextPath}/main/blog_manager">
					<i class="media-left media-middle"><svg version="1.1" x="0px" y="0px" width="19.83px" height="18px" viewBox="287.725 407.535 19.83 18" enable-background="new 287.725 407.535 19.83 18"
															xml:space="preserve">
<g>
	<path fill="#C9C8C8" d="M307.555,407.535h-9.108v10.264h9.108V407.535z M287.725,407.535v6.232h9.109v-6.232H287.725z
		 M296.834,415.271h-9.109v10.264h9.109V415.271z M307.555,419.303h-9.108v6.232h9.108V419.303z"/>
</g>
</svg></i>
					<span class="media-body">博客管理</span>
				</a>
			</li>


		</c:if>



		<!--博客目录-->


		<c:forEach items="${firstCatalogs}" var="items">

		<li class="dropdown pmd-dropdown"> 
			<a class="btn-user dropdown-toggle media" data-sidebar="true" href="${pageContext.request.contextPath}/blog/catalog_select?id=${items.id}">
				<i class="media-left media-middle"><svg version="1.1" x="0px" y="0px" width="14.187px" height="18px" viewBox="0 0 14.187 18" enable-background="new 0 0 14.187 18" xml:space="preserve">
<path fill="#C9C8C8" d="M0,0v18h14.187V0H0z M3.121,3.293h2.023v4.767H3.121V3.293z M11.211,14.764H2.948v-2.022h8.263V14.764
	L11.211,14.764z M11.211,11.585H2.948V9.563h8.263V11.585L11.211,11.585z M11.211,8.407H7.455V6.385h3.756V8.407z M11.211,5.229
	H7.455V3.207h3.756V5.229z"/>
</svg></i>
				<span class="media-body">${items.name}</span>
				<div class="media-right media-bottom"><i class="dic-more-vert dic"></i></div>
			</a> 

		</li>

		</c:forEach>


	</ul>
</aside><!-- End Left sidebar -->
<!-- Sidebar Ends -->

<!--content area start-->
<div id="content" class="pmd-content inner-page">
	<!--tab start-->
	<div class="container-fluid full-width-container blank">
		<!-- Title -->
		<h1 class="section-title" id="services">
			<span>主页</span>
		</h1><!-- End Title -->
	
		<!--breadcrum start-->
		<ol class="breadcrumb text-left">
		  <li><a href="${pageContext.request.contextPath}/main/index">控制面板</a></li>
		  <li class="active">主页</li>
		</ol><!--breadcrum end-->






		<div class="no-table-blank-state row">
			<!--no table found blank state-->
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="no-table-found text-center">


					<div class="panel">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a  data-toggle="collapse" data-parent="#accordion3" href="#collapseTwo3" aria-expanded="false" aria-controls="collapseTwo3"  data-expandable="false"><i class="material-icons pmd-sm pmd-accordion-icon-left">verified_user</i>目录索引<i class="material-icons md-dark pmd-sm pmd-accordion-arrow">keyboard_arrow_down</i></a>
							</h4>
						</div>
						<div id="collapseTwo3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">

									<c:forEach items="${secondCatalogs}" var="items">

									<a href="${pageContext.request.contextPath}/blog/blog_select?id=${items.id}"  class="btn pmd-btn-raised btn-primary btn-block pmd-ripple-effect" >${items.name}</a>

									</c:forEach>

							</div>
						</div>
					</div>


					<c:forEach items="${documents}" var="items" varStatus="st">

						<div class="col-lg-4 col-md-4 col-xs-4">


							<!-- Default card starts -->
							<div class="pmd-card pmd-card-default pmd-z-depth">

								<!-- Card header -->
								<div class="pmd-card-title">

									<div class="media-body media-middle">
										<h3 class="pmd-card-title-text">${items.username}</h3>
										<span class="pmd-card-subtitle-text">${items.create_time}</span>

									</div>
								</div>


								<!-- Card body -->
								<div class="pmd-card-title">
									<h2 class="pmd-card-title-text">${items.title}</h2>
									<!-- <span class="pmd-card-subtitle-text">Secondary text</span>	 -->
								</div>


								<!-- Card actions -->
								<div class="pmd-card-actions">
									<a href="${pageContext.request.contextPath}/blog/detail?id=${items.id}">查看详细</a>
								</div>
							</div>
							<!--Default card ends -->



						</div>



					</c:forEach>


				</div>
			</div>

				<!--no table found blank state-->
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="no-table-found text-center">

						<h2>精诚所至，金石为开</h2>

						<c:if test="${sessionScope.USER.name == null}">


						<form method="post" action="${pageContext.request.contextPath}/main/login">
							<div class="pmd-card-body">

								<div class="form-group pmd-textfield pmd-textfield-floating-label">
									<label for="Account" class="control-label pmd-input-group-label">Username</label>
									<div class="input-group">
										<div class="input-group-addon"><i class="material-icons md-dark pmd-sm">perm_identity</i></div>
										<input type="text" name="name" class="form-control" id="Account">
									</div>
								</div>


								<div class="form-group pmd-textfield pmd-textfield-floating-label">
									<label for="Password" class="control-label pmd-input-group-label">Password</label>
									<div class="input-group">
										<div class="input-group-addon"><i class="material-icons md-dark pmd-sm">lock_outline</i></div>
										<input type="password" name="password" class="form-control" id="Password">
									</div>
								</div>

							</div>

							<div class="pmd-card-footer card-footer-no-border card-footer-p16 text-center">
								<button type="submit" class="btn pmd-ripple-effect btn-primary btn-block">登录</button>
							</div>

						</form>

						</c:if>

					    <br/>
						<br/>


						<c:if test="${sessionScope.USER.name != null}">


							<div class="col-lg-12 col-md-12 col-xs-12">
								<!--pmd-z-depth-->
								<div class="pmd-card pmd-z-depth-3 shadow-demo">
									<div class="pmd-card-body">

										<center>
											<h1>
										    用户名:${sessionScope.USER.name}
											</h1>
											
											<img src="${pageContext.request.contextPath}/themes/images/logo.png" width="200px" height="200px">
											
										</center>
									</div>
								</div>
							</div>


						<div class="pmd-card-footer card-footer-no-border card-footer-p16 text-center">
							<a href="${pageContext.request.contextPath}/main/loginOut" class="btn pmd-ripple-effect btn-primary btn-block">退出登录</a>
						</div>

						</c:if>



					</div>
				</div><!-- end no table found blank state-->
			</div>
	</div><!-- tab end -->
	
</div><!-- content area end -->

<!-- Footer Starts -->
<footer class="admin-footer">
 <div class="container-fluid">
 	<ul class="list-unstyled list-inline">
	 	<li>
			<span class="pmd-card-subtitle-text">Cxspace &copy; 2016. All Rights Reserved.</span>
			<h3 class="pmd-card-subtitle-text">赣ICP备16010316号-1</h3>
        </li>

        <li class="pull-right for-support">
			<a href="mailto:JieLiu2017@aliyun.com">
          		<div>
					<svg x="0px" y="0px" width="38px" height="38px" viewBox="0 0 38 38" enable-background="new 0 0 38 38">
<g><path fill="#A5A4A4" d="M25.621,21.085c-0.642-0.682-1.483-0.682-2.165,0c-0.521,0.521-1.003,1.002-1.524,1.523
		c-0.16,0.16-0.24,0.16-0.44,0.08c-0.321-0.2-0.683-0.32-1.003-0.521c-1.483-0.922-2.726-2.125-3.809-3.488
		c-0.521-0.681-1.002-1.402-1.363-2.205c-0.04-0.16-0.04-0.24,0.08-0.4c0.521-0.481,1.002-1.003,1.524-1.483
		c0.721-0.722,0.721-1.524,0-2.246c-0.441-0.44-0.842-0.842-1.203-1.202c-0.441-0.441-0.842-0.842-1.243-1.243
		c-0.642-0.642-1.483-0.642-2.165,0c-0.521,0.521-1.002,1.002-1.524,1.523c-0.481,0.481-0.722,1.043-0.802,1.685
		c-0.08,1.042,0.16,2.085,0.521,3.047c0.762,2.085,1.925,3.849,3.328,5.532c1.884,2.286,4.17,4.05,6.815,5.333
		c1.203,0.562,2.406,1.002,3.729,1.123c0.922,0.04,1.724-0.201,2.365-0.923c0.441-0.521,0.923-0.922,1.403-1.403
		c0.682-0.722,0.682-1.563,0-2.245C27.265,22.729,26.423,21.927,25.621,21.085z"/>
	<path fill="#A5A4A4" d="M32.437,5.568C28.869,2,24.098-0.005,19.005-0.005S9.182,2,5.573,5.568C2.005,9.177,0,13.908,0,19
		s1.965,9.823,5.573,13.432c3.568,3.568,8.34,5.573,13.432,5.573s9.823-1.965,13.431-5.573
		C39.854,25.014,39.854,12.985,32.437,5.568z M30.299,30.294c-3.003,3.045-7.021,4.695-11.293,4.695
		c-4.272,0-8.291-1.65-11.294-4.695C4.666,27.29,3.016,23.271,3.016,19c0-4.272,1.649-8.291,4.695-11.294
		c3.003-3.003,7.022-4.695,11.294-4.695c4.272,0,8.291,1.649,11.293,4.695C36.56,13.924,36.56,24.075,30.299,30.294z"/>
</g></svg>
            	</div>
            	<div>
				  <a class="pmd-card-title-text">JieLiu2017@aliyun.com</a>
				</div>
            </a>
        </li>
    </ul>
 </div>
</footer>
<!-- Footer Ends -->

<!-- Scripts Starts -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.12.2.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/propeller.min.js"></script>
<script>

    function doSearch() {

        document.forms[0].submit();

    }

</script>
</body>
</html>