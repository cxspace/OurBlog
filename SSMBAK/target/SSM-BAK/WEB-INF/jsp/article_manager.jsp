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
<title>博客管理</title>
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

	</ul>
</aside><!-- End Left sidebar -->
<!-- Sidebar Ends -->

<!--content area start-->
<div id="content" class="pmd-content inner-page">
	<div class="container-fluid full-width-container value-added-detail-page">
		<div>

			<form action="${pageContext.request.contextPath}/blog/search" method="post">
			<div class="pull-right table-title-top-action">
				<div class="pmd-textfield pull-left">
					<input type="text" name="title" id="exampleInputAmount" class="form-control" placeholder="搜索关键字 ...">
				</div>

				<a href="javascript:doSearch()" class="btn btn-primary pmd-btn-raised add-btn pmd-ripple-effect pull-left">搜索</a>
			</div>
			</form>
			<!-- Title -->
			<h1 class="section-title" id="services">
				<span>二级目录管理</span>
			</h1><!-- End Title -->
			<!--breadcrum start-->
			<ol class="breadcrumb text-left">
				<li><a href="${pageContext.request.contextPath}/main/blog_manager">博客管理</a></li>
				<li><a href="${pageContext.request.contextPath}/main/blog_manager">一级目录管理</a></li>
				<li><a>二级目录管理</a></li>
				<li class="active">文章管理</li>
			</ol><!--breadcrum end-->
		</div>
		<!-- Table -->
		<div class="table-responsive pmd-card pmd-z-depth">
			<table class="table table-mc-red pmd-table">
				<thead>
				<tr>
					<th>ID</th>
					<th>文章名</th>
					<th>作者</th>
					<th>创建时间</th>
					<th>操作</th>
				</tr>
				</thead>
				<tbody>


				<c:forEach items="${documents}" var="items">

					<tr>
					<td>${items.id}</td>
					<td>${items.title}</td>
					<td>${items.username}</td>
					<td>${items.create_time}</td>

					<td class="pmd-table-row-action">
						<a href="${pageContext.request.contextPath}/blog/article_manager_editUI?id=${items.id}" class="btn pmd-btn-fab pmd-btn-flat pmd-ripple-effect btn-default btn-sm">
							<i class="material-icons md-dark pmd-sm">edit</i>
						</a>

						<a href="${pageContext.request.contextPath}/blog/article_manager_delete?id=${items.id}" class="btn pmd-btn-fab pmd-btn-flat pmd-ripple-effect btn-default btn-sm">
							<i class="material-icons md-dark pmd-sm">delete</i>
						</a>

					</td>
				   </tr>

				</c:forEach>

				</tbody>
			</table>

		</div>



		<!-- Card Footer -->
		<%--<div class="pmd-card-footer">--%>
			<%--<ul class="pmd-pagination pull-right list-inline">--%>
				<%--<span>Rows per page:</span> <span class="dropdown pmd-dropdown">--%>
			  <%--<button class="btn pmd-ripple-effect pmd-btn-flat btn-link dropdown-toggle" type="button" id="dropdownMenuDivider" data-toggle="dropdown" aria-expanded="false">10 <span class="caret"></span></button>--%>
			  <%--<ul aria-labelledby="dropdownMenuDivider" role="menu" class="dropdown-menu">--%>
				  <%--<li role="presentation"><a href="javascript:void(0);" tabindex="-1" role="menuitem">10</a></li>--%>
				  <%--<li role="presentation"><a href="javascript:void(0);" tabindex="-1" role="menuitem">20</a></li>--%>
				  <%--<li role="presentation"><a href="javascript:void(0);" tabindex="-1" role="menuitem">30</a></li>--%>
				  <%--<li role="presentation"><a href="javascript:void(0);" tabindex="-1" role="menuitem">40</a></li>--%>
				  <%--<li role="presentation"><a href="javascript:void(0);" tabindex="-1" role="menuitem">50</a></li>--%>
			  <%--</ul>--%>
			  <%--</span> <span>1-10 of 100</span> <a href="javascript:void(0);" aria-label="Previous"><i class="material-icons md-dark pmd-sm">keyboard_arrow_left</i></a> <a href="javascript:void(0);" aria-label="Next"><i class="material-icons md-dark pmd-sm">keyboard_arrow_right</i></a>--%>
			<%--</ul>--%>
		<%--</div>--%>




	</div>
	
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