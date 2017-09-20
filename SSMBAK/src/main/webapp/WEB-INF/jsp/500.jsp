<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<!doctype html>
<html lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Petpooja_App_Marketplace">
<meta content="width=device-width, initial-scale=1, user-scalable=no" name="viewport">
<title>Petpooja App Marketplace</title>
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


<body class="body-custom body-404page">
	<div class="errorpage">
		<div class="wrapper">
			<div class="container">
				<header class="header-primary">
					<a href="${pageContext.request.contextPath}/main/index" rel="home"><img src="${pageContext.request.contextPath}/themes/images/logo-icon.png" alt="logo" class="logo"></a>
				</header><!-- header-primary -->
			
				<div class="content-primary">
					<h1 class="title">系统错误</h1>
					<p class="description">
						系统发生了异常，异常信息为
						<br/>
						${message}
					</p>
					<div class="section-footer">
						<a href="${pageContext.request.contextPath}/main/index" class="btn btn-primary">返回主页</a>
						<a href="mailto:JieLiu2017@aliyun.com" class="btn btn-secondary">报告错误</a>
					</div>
				</div><!-- content-primary -->
			</div><!-- container -->
		</div>
	</div>

<!-- Scripts Starts -->
<script src="assets/js/jquery-1.12.2.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/propeller.min.js"></script>
<script>
	$(document).ready(function() {
		var sPath=window.location.pathname;
		var sPage = sPath.substring(sPath.lastIndexOf('/') + 1);
		$(".pmd-sidebar-nav").each(function(){
			$(this).find("a[href='"+sPage+"']").parents(".dropdown").addClass("open");
			$(this).find("a[href='"+sPage+"']").parents(".dropdown").find('.dropdown-menu').css("display", "block");
			$(this).find("a[href='"+sPage+"']").parents(".dropdown").find('a.dropdown-toggle').addClass("active");
			$(this).find("a[href='"+sPage+"']").addClass("active");
		});
	});
</script> 

<!-- Scripts Ends -->

</body>
</html>