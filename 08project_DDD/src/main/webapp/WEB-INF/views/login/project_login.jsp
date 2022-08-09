<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name ="google-signin-client_id" content="217755353555-3msma49ckq4fa47k0tg5tkshatcdh8c9.apps.googleusercontent.com">
		<title> 로그인 </title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	</head>
	
	<body>
	<%@ include file="/WEB-INF/views/header6.jsp" %>
		<table class="table table-hover">
			<thead class="nav justify-content-center">
			<a class="nav-link" href="${pageContext.request.contextPath}/project_login">
				<p style="text-align: center;"><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg"
					width="300px" height="120px"></img></p></a>
			
				<ul class="nav justify-content-center">
					<input id="user_id" name="user_id" type="text" class="mb-3" style="height: 50px;"
						maxlength="20" size="50px" placeholder="ID 입력">
			<br>
					<input id="user_pwd" name="user_pwd" type="password" class="mb-2" style="height: 50px;"
						maxlength="20" size="50px" placeholder="패스워드 입력">
				</ul>
			<br>		
				<ul class="nav justify-content-center mb-3">
						
					<a href="${pageContext.request.contextPath}/project_join">
						회원 가입
					</a>
						
				</ul>
				<br>
				<ul class="nav justify-content-center mb-1">
					<button id="btn" class="btn btn-primary" type="submit">로 그 인</button>
				</ul>
				<br>			
				<ul class="nav justify-content-center">
					<a href="${pageContext.request.contextPath}/help">
						<button id="btn2" class="btn btn-danger" type="submit">취 소</button>
					</a>
				</ul>
				<br>
			</thead>
		</table>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	<script type="text/javascript">
	$(document).ready(function() {
		
		$("#btn").click(function() {

			$.post(
					"${pageContext.request.contextPath}/login"
					, {
						user_id : $("#user_id").val()
						, user_pwd : $("#user_pwd").val()
					}
					, function(data, status) {
						if(data == 0){
							alert("아이디와 패스워드가 올바르지 않습니다.");
						} else if(data == 1){
							location.href = "${pageContext.request.contextPath}/help";
						} else {
							alert("잠시 후 다시 시도해 주세요.");
						}
					}//call back function
			);//post

		});//click
	});//ready
	</script>
	</body>
</html>









