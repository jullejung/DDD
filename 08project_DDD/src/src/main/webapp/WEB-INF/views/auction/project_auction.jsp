<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>경매 사이트</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/views/header3.jsp" %>
		<table class="table table-hover">
			<tbody>
				<tr>
					<th> 경매 목록 </th>	<th> 사 진 </th>
					<th> 시작 시간 </th>	<th> 시작가 </th>	<th> 입장 </th>
				</tr>
			
		</tbody>
	</table>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>
