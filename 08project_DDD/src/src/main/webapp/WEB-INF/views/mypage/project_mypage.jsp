<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
	<body>
	
	<%@ include file="/WEB-INF/views/header5.jsp" %>
		<table class="table table-hover">
			<thead class="nav justify-content-center">
				<tr>
					<th>
						<div class="btn-group" role="group" aria-label="Third group">
							<a class="nav-link"  href="${pageContext.request.contextPath}">
								<button type="button" class="btn btn-info">구매내역</button>
							</a>
						</div>
						<div class="btn-group" role="group" aria-label="Third group">
							<a class="nav-link"  href="${pageContext.request.contextPath}">
								<button type="button" class="btn btn-info">판매내역</button>
							</a>
						</div>
						<div class="btn-group" role="group" aria-label="Third group">
							<a class="nav-link"  href="${pageContext.request.contextPath}">
								<button type="button" class="btn btn-info">입찰/낙찰</button>
							</a>
						</div>
						<div class="btn-group" role="group" aria-label="Third group">
							<a class="nav-link"  href="${pageContext.request.contextPath}">
								<button type="button" class="btn btn-info">경매등록</button>
							</a>
						</div>
						<div class="btn-group" role="group" aria-label="Third group">
							<a class="nav-link"  href="${pageContext.request.contextPath}">
								<button type="button" class="btn btn-info">배송 조회</button>
							</a>
						</div>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>
					제작 준비 중
					</th>
				</tr>
			</tbody>
	</table>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>
