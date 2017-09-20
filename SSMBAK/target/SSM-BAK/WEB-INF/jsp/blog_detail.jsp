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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/css/propeller-admin.css"/>

<link href="${pageContext.request.contextPath}/bower_components/summernote/dist/summernote.css" rel="stylesheet"/>


</head>



<body style="font-family:'Roboto';background:#333;margin:0">
<!-- Header Starts -->
<!--Start Nav bar -->
<nav class="navbar navbar-inverse navbar-fixed-top pmd-navbar pmd-z-depth">

	<div class="container-fluid">
			
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
		<a href="${pageContext.request.contextPath}/main/index" class="btn btn-sm pmd-btn-fab pmd-btn-flat pmd-ripple-effect pull-left margin-r8 pmd-sidebar-toggle">
			<i class="material-icons">keyboard_arrow_left</i>
		</a>
				

		  <a class="navbar-brand navbar-brand-custome">博客内容</a>
		</div>
			 


		</div><!-- /.navbar-collapse -->

</nav><!--End Nav bar -->


<!-- Header Ends -->

<div class="container">


<div class="row">

		<div  id="doc_content"  style="width: 100%;height: 100%;margin-top: 90px;margin-bottom:120px;margin-left:0;margin-right:5%;background-color: white;padding-top: 50px;padding-bottom: 20px;padding-left: 5%;padding-right: 5%">

			<h2 style="text-align: center">文章标题:${document.title}</h2>



			<p style="text-align: center">创建者: ${document.username}&nbsp;&nbsp;&nbsp;&nbsp;邮箱: 123456789</p>

			<p style="text-align: center">时间：${document.create_time}</p>

			${document.content}


			<h3>评论留言</h3>
			<hr/>

			<!-- section content start-->
			<form id="validationForm" action="${pageContext.request.contextPath}/comment/save" method="post">
				<div class="pmd-card pmd-z-depth">
					<div class="pmd-card-body">

						<div class="group-fields clearfix row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
								<div class="form-group pmd-textfield pmd-textfield-floating-label">
									<label for="username" class="control-label">
										昵称 *
									</label>
									<input type="text" id="username" name="username" class="form-control">
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
								<div class="form-group pmd-textfield pmd-textfield-floating-label">
									<label for="regular2" class="control-label">
										联系邮箱 *
									</label>
									<input type="text" name="email" id="regular2" class="form-control">
									<input type="hidden" name="doc_id" value="${document.id}">

								</div>
							</div>
						</div>



						<textarea id="summernote" class="form-control" name="content" rows="3" placeholder="请输入正文"></textarea>


					</div>
					<div class="pmd-card-actions">
						<button class="btn btn-primary next" type="submit">提交</button>

					</div>
				</div>
				<!-- section content end -->
			</form>



			<h3 class="text-muted">评论列表</h3>


			<c:forEach items="${comments}" var="items" varStatus="st">

			<div class="pmd-card pmd-card-default pmd-z-depth">
				<div class="pmd-card-title">
					<h2 class="pmd-card-title-text">${items.username}</h2>
					<span class="pmd-card-subtitle-text">${items.email}</span>
				</div>
				<div class="pmd-card-body">
					${items.content}
				</div>
				<div class="pmd-card-actions">
					<button type="button" class="btn pmd-btn-flat pmd-ripple-effect btn-primary">${st.count} &nbsp;楼</button>
				</div>
			</div>
			<br/>
			</c:forEach>



		</div>


	</div>

	<br/>



</div>


	

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
<script src="${pageContext.request.contextPath}/bower_components/summernote/dist/summernote.js"></script>


<script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
</script>

</body>
</html>