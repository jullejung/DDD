<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
header {
   position:fixed;
   left:0px;
   top:0px;
   height:60px;
   width:100%;
   background-color: white;
}
header p {
   text-align: center;
}
</style>

        <header>
            <form action="${pageContext.request.contextPath}/main/help" method="get">
		<div class="wrap">
			<div class="container" >
				<ul class="nav justify-content" >
					<c:choose>
						<c:when test="${login_info != null && login_info.mid != null}">
						${login_info.mid}
							<a href="${pageContext.request.contextPath}/logout"> LOGOUT </a>
						</c:when>
						<c:otherwise >
							<a class="nav-link" href="${pageContext.request.contextPath}/help"
						 		data-toggle="tooltip" data-placement="top" title="H O M E">
						 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
								width="30px" height="30px"></p></a>
								
							<a class="nav-link" href="${pageContext.request.contextPath}/project_login"
						 		data-toggle="tooltip" data-placement="top" title="로그인">
						 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
								width="30px" height="30px"></p></a>
								
							<a class="nav-link" href="${pageContext.request.contextPath}/project_join"
						 		data-toggle="tooltip" data-placement="top" title="회원 가입">
						 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
								width="30px" height="30px"></p></a>
							
						<script>
								$(document).ready(function(){
									 $('[data-toggle="tooltip"]').tooltip();   
								});
						</script>							
					
						</c:otherwise>
					</c:choose>
				</ul>
			</div>	
		</div>
	</form>
</header>
<main>
     
