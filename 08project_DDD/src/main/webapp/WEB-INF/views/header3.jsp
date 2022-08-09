<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<form action="${pageContext.request.contextPath}/main/help" method="get">
		<div class="wrap">
			<div class="container">
				<ul class="nav justify-content-center">
					<c:choose>
						<c:when test="${login_info != null && login_info.mid != null}">
						${login_info.mid}
							<a href="${pageContext.request.contextPath}/logout"> LOGOUT </a>
						</c:when>
						<c:otherwise>
							<a class="nav-link" href="${pageContext.request.contextPath}/">
								<p><img src=""	width="50px" height="50px"><br>등록</img></p></a>
								
							<a class="nav-link" href="${pageContext.request.contextPath}/">
								<p><img src="" width="50px" height="50px"><br>낙찰내역</p></a>
						
							<a class="nav-link" href="${pageContext.request.contextPath}/project_cart">
								<p><img src="" width="50px" height="50px"><br>장바구니</p></a>
														
							<a class="nav-link" href="${pageContext.request.contextPath}/project_login">
								<p><img src="" width="50px" height="50px"><br>로그인</p></a>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>	
		</div>
	</form>
<main>
