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
							<a class="nav-link" href="${pageContext.request.contextPath}/help">
								<p><img src=""	width="50px" height="50px"><br></img></p></a>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>	
		</div>
	</form>
<main>
