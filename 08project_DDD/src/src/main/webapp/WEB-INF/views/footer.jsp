<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
    footer {
   position:fixed;
   left:0px;
   bottom:0px;
   height:60px;
   width:100%;
   background-color: white;
	}
	footer p {
	   text-align: center;
	}
	
		</style>
	<footer>
		<form action="${pageContext.request.contextPath}/main/help" method="get">
			<div class="wrap" style="content-inside">
			<div class="container">
				<ul class="nav justify-content-center">
						
					
					  <a class="nav-link" href="${pageContext.request.contextPath}/help"
					 	data-toggle="tooltip" data-placement="top" title="H O M E">
					 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
									width="30px" height="30px"></p></a>
					  <a class="nav-link" href="${pageContext.request.contextPath}/project_auction"
					 	data-toggle="tooltip" data-placement="top" title="굿즈 경매">
					 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
									width="30px" height="30px"></p></a>
					  <a class="nav-link" href="${pageContext.request.contextPath}/project_product"
					 	data-toggle="tooltip" data-placement="top" title="굿즈 상품">
					 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
									width="30px" height="30px"></p></a>
					  <a class="nav-link" href="${pageContext.request.contextPath}/project_board"
					 	data-toggle="tooltip" data-placement="top" title="커뮤니티 &정보">
					 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
									width="30px" height="30px"></p></a>
					  <a class="nav-link" href="${pageContext.request.contextPath}/project_mypage"
					 	data-toggle="tooltip" data-placement="top" title="마이 페이지">
					 	<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220804_174654570.jpg""
									width="30px" height="30px"></p></a>
					
					<script>
					$(document).ready(function(){
					  $('[data-toggle="tooltip"]').tooltip();   
					});
					</script>
					
				</ul>
			</div>	
		</div>
	</form>
	</footer>
</main>
		
