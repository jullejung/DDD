<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>iframe 태그</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
	<body>
	
<%@ include file="/WEB-INF/views/header.jsp" %>
	
	<table class="nav justify-content-center">
		<br>
		<br>
		<br>
		
		<thead>
			<tr>
				<th>
				<div id="demo" class="carousel slide" data-ride="carousel">

				  <!-- Indicators -->
				  <ul class="carousel-indicators">
				    <li data-target="#demo" data-slide-to="0" class="active"></li>
				    <li data-target="#demo" data-slide-to="1"></li>
				    <li data-target="#demo" data-slide-to="2"></li>
				  </ul>
				  
				  <!-- The slideshow -->
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220805_094915936.jpg"
				       width="429" height="439">
				    </div>
				    <div class="carousel-item">
				      <img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220805_094928967.jpg"
				       width="429" height="439">
				    </div>
				    <div class="carousel-item">
				      <img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220805_095002508.jpg"
				       width="429" height="439">
				    </div>
				  </div>
				  
				  <!-- Left and right controls -->
				  <a class="carousel-control-prev" href="#demo" data-slide="prev">
				    <span class="carousel-control-prev-icon"></span>
				  </a>
				  <a class="carousel-control-next" href="#demo" data-slide="next">
				    <span class="carousel-control-next-icon"></span>
				  </a>
				</div>	
								
									
				</th>
			</tr>
		</tbody>
	</table>
	
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>