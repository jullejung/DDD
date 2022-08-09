<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 페이지</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
	<body>
	<%@ include file="/WEB-INF/views/header2.jsp" %>
		<table class="table table-hover">
			<thead class="nav justify-content-center">
				<tr>
					<th>
						<div style="margin-right: -13; margin-left: -13;" class="btn-group" role="group" aria-label="Third group">
							<a class="nav-link"  href="${pageContext.request.contextPath}">
								<button type="button" class="btn btn-info">더보이즈</button>
							</a>
						</div>
						<div style="margin-right: -13; margin-left: -13;" class="btn-group" role="group" aria-label="Third group">
							<a class="nav-link"  href="${pageContext.request.contextPath}">
								<button type="button" class="btn btn-info">스트레이키즈</button>
							</a>
						</div>
						<div style="margin-right: -13; margin-left: -13;" class="btn-group" role="group" aria-label="Third group">
							<a class="nav-link"  href="${pageContext.request.contextPath}">
								<button type="button" class="btn btn-info">에이티즈</button>
							</a>
						</div>
						<div style="margin-right: -13; margin-left: -13;" class="btn-group" role="group" aria-label="Third group">
							<a class="nav-link"  href="${pageContext.request.contextPath}">
								<button type="button" class="btn btn-info">NCT</button>
							</a>
						</div>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>
						<div class="input-group nav justify-content-center" style="text-align: center;">
							<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220805_094915936.jpg"
							 width="350px"><br>사진 이름<br>사진 금액</p>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220805_094928967.jpg"
							 width="350px"><br>사진 이름<br>사진 금액</p>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							<p><img src="${pageContext.request.contextPath}/resources/image/KakaoTalk_20220805_095002508.jpg"
							 width="350px"><br>사진 이름<br>사진 금액</p>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
						</div>
					</th>
				</tr>
			</tbody>
	</table>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>
