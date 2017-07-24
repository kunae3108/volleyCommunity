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
		<title>Volley Community</title>
    	<link href="<c:url value='/static/css/bootstrap.min.css'/>" rel="stylesheet">
    	<link href="<c:url value='/static/css/vbcom-main.css'/>" rel="stylesheet">
	
	</head>
	<body>
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
									<a class="navbar-brand" href="">
										<h1>
											<p style="color: #ffffff;">- Volley Cummunity</p>
										</h1>
									</a> 
								</div> 
								<div class="collapse navbar-collapse"> 
									<ul class="nav navbar-nav navbar-right"> 
										<li class="scroll active"><a href="${pageContext.request.contextPath}/">Home</a></li> 
										<li class="scroll"><a href="${pageContext.request.contextPath}/players">Player</a></li> 
										<li class="scroll"><a href="${pageContext.request.contextPath}/positions">Position</a></li> 
										<li class="scroll"><a href="${pageContext.request.contextPath}/Teams">Team</a></li>
										<li class="scroll"><a href="${pageContext.request.contextPath}/Blog">Blog</a></li> 
										<li class="scroll"><a href="${pageContext.request.contextPath}/Contact">Contact Us</a></li> 
									</ul> 
								</div> 
							</div> 
						</div><!--/navbar--> 
					</header>
				</div>
			</div>
			<div class="row" style="margin-top: 80px; width: 100%;height: 200px;" >
			
			
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
	
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("div.collapse.navbar-collapse > li.scroll").on('click',function(){
				$("div.collapse.navbar-collapse:child").removeClass("active");
				$(this).addClass("active");
			})
			
			
			
		});
	
	</script>
	
	
	
</html>