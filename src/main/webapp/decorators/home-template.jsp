<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="dec"	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<meta name="description" content="Creative One Page Parallax Template">
		<meta name="keywords" content="Creative, Onepage, Parallax, HTML5, Bootstrap, Popular, custom, personal, portfolio" /> 
		<meta name="author" content=""> 
		<title>Volley Community</title>
    	<link href="<c:url value='/static/css/bootstrap.min.css'/>" rel="stylesheet">
		<link href="<c:url value='/static/himu-template/css/bootstrap.min.css'/>" rel="stylesheet">
		<link href="<c:url value='/static/himu-template/css/prettyPhoto.css'/>" rel="stylesheet"> 
		<link href="<c:url value='/static/himu-template/css/font-awesome.min.css'/>" rel="stylesheet"> 
		<link href="<c:url value='/static/himu-template/css/animate.css'/>" rel="stylesheet"> 
		<link href="<c:url value='/static/himu-template/css/main.css'/>" rel="stylesheet">
		<link href="<c:url value='/static/himu-template/css/responsive.css'/>" rel="stylesheet"> 
		<!--[if lt IE 9]> <script src="js/html5shiv.js'/>"></script> 
		<script src="<c:url value='/static/himu-template/js/respond.min.js'/>"></script> <![endif]  -->
		<link rel="shortcut icon" href="images/ico/favicon.png'/>"> 
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value='/static/himu-template/images/ico/apple-touch-icon-144-precomposed.png'/>"> 
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value='/static/himu-template/images/ico/apple-touch-icon-114-precomposed.png'/>"> 
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value='/static/himu-template/images/ico/apple-touch-icon-72-precomposed.png'/>"> 
		<link rel="apple-touch-icon-precomposed" href="<c:url value='/static/himu-template/images/ico/apple-touch-icon-57-precomposed.png'/>">
	</head>
	<body>
		<div class="preloader">
			<div class="preloder-wrap">
				<div class="preloder-inner"> 
					<div class="ball"></div> 
					<div class="ball"></div> 
					<div class="ball"></div> 
					<div class="ball"></div> 
					<div class="ball"></div> 
					<div class="ball"></div> 
					<div class="ball"></div>
				</div>
			</div>
		</div><!--/.preloader-->
		
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<header id="navigation"> 
						<div class="navbar navbar-inverse navbar-fixed-top" role="banner"> 
							<div class="container"> 
								<div class="navbar-header"> 
									<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> 
										<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> 
									</button> 
									<a class="navbar-brand" href=""><h1 style="color: #fc7700;">- Volley Cummunity</h1></a> 
								</div> 
								<div class="collapse navbar-collapse"> 
									<ul class="nav navbar-nav navbar-right"> 
										<li class="scroll active"><a href="#">Home</a></li> 
										<li class="scroll"><a href="#">Player</a></li> 
										<li class="scroll"><a href="#">Position</a></li> 
										<li class="scroll"><a href="#">Team</a></li>
										<li class="scroll"><a href="#">Blog</a></li> 
										<li class="scroll"><a href="#">Contact Us</a></li> 
									</ul> 
								</div> 
							</div> 
						</div><!--/navbar--> 
					</header>
				</div>
			</div>
			<div class="row" style="margin-top: 40px; margin-bottom: 40px;" >
			</div>
			<div class="row" >
				<div class="col-md-12">
			        <dec:body />
				</div>
			</div>
	    </div>
	</body>
	
    <script src="<c:url value='/static/js/jquery.min.js'/>" ></script>
	<script src="<c:url value='/static/js/bootstrap.min.js'/>"></script>
<%-- 	<script type="text/javascript" src="<c:url value='/static/himu-template/js/smoothscroll.js'/>"></script>  --%>
	<script type="text/javascript" src="<c:url value='/static/himu-template/js/jquery.isotope.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/himu-template/js/jquery.prettyPhoto.js'/>"></script> 
	<script type="text/javascript" src="<c:url value='/static/himu-template/js/jquery.parallax.js'/>"></script> 
	<script type="text/javascript" src="<c:url value='/static/himu-template/js/main.js'/>"></script> 
	
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("div.collapse.navbar-collapse > li.scroll").on('click',function(){
				$("div.collapse.navbar-collapse:child").removeClass("active");
				$(this).addClass("active");
			})
			
			
			
		});
	
	</script>
	
	
	
</html>