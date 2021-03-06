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
	    <script src="<c:url value='/static/js/jquery.min.js'/>" ></script>
		<script src="<c:url value='/static/js/bootstrap.min.js'/>"></script>
	
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
											<p>- Volley Cummunity</p>
										</h1>
									</a> 
								</div> 
								<div class="collapse navbar-collapse"> 
									<ul class="nav navbar-nav navbar-right"> 
										<li id="home" class="scroll"><a href="${pageContext.request.contextPath}/">Home</a></li> 
										<li id="player" class="scroll"><a href="${pageContext.request.contextPath}/player">Player</a></li> 
										<li id="position" class="scroll"><a href="${pageContext.request.contextPath}/position">Position</a></li> 
										<li id="team" class="scroll"><a href="${pageContext.request.contextPath}/team">Team</a></li>
										<li id="blog" class="scroll"><a href="${pageContext.request.contextPath}/blog">Blog</a></li> 
										<li id="contact" class="scroll"><a href="${pageContext.request.contextPath}/contact">Contact Us</a></li> 
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
	
	<script type="text/javascript">
		$(document).ready(function(){
			
			$("div.collapse.navbar-collapse > ul.navbar-right > li.scroll").each(function(){
				if($(this).children('a').prop('href') == window.location.href){
					$(this).addClass('active');
				}
			});
			
		});
	
	</script>
	
	
	
</html>