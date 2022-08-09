<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>QnA</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
	<body>
	<%@ include file="/WEB-INF/views/header5.jsp" %>
		<table class="table table-hover content-center">
			<thead class="nav justify-content-center">
				<tr>
					<th>
						<div class="btn-group" role="group" aria-label="Third group">
							<a style="padding-left: 0; padding-right: 0.5;"  class="nav-link"  href="${pageContext.request.contextPath}/project_board">
								<button type="button" class="btn btn-info">공지사항</button>
							</a>
						</div>
						<div class="btn-group" role="group" aria-label="Third group">
							<a style="padding-left: 0; padding-right: 0;" class="nav-link"  href="${pageContext.request.contextPath}/project_board2">
								<button type="button" class="btn btn-info">생일카페</button>
							</a>
						</div>
						<div class="btn-group" role="group" aria-label="Third group">
							<a style="padding-left: 0.5;" class="nav-link"  href="${pageContext.request.contextPath}/project_board3">
								<button type="button" class="btn btn-info">자유게시판</button>
							</a>
						</div>
						<div class="btn-group" role="group" aria-label="Third group">
							<a style="padding-left: 0; padding-right: 0.5;" class="nav-link"  href="${pageContext.request.contextPath}/project_board4">
								<button type="button" class="btn btn-info">QnA</button>
							</a>
						</div>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>
					<h1>QnA</h1>
							<div class="input-group">
								<div class="input-group-prepend">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<select class="form-control" id="searchOption" name="searchOption">
										<option value="title"
											<c:if test="${search_dto.searchOption == 'title'}"> selected="selected" </c:if>
										> 제 목 </option>
										<option value="writer"
											<c:if test="${search_dto.searchOption == 'writer'}"> selected="selected" </c:if>
										> 작 성 자 </option>
									</select>
								</div>
									<input type="text" class="form-control" id="searchWord" name="searchWord" value="${search_dto.searchWord}">
								<div class="input-group-append">
									<button type="submit" class="btn btn-primary"> 검 색 </button>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</div>
							</div>
							<br><br>
								<a href="${pageContext.request.contextPath}/qna">
									<button class="btn btn-primary float-right">글 쓰기 </button>
								</a>
					</th>
				</tr>
			</table>
				<table class="table table-hover">
					<thead>
						<tr>
							<th> 번 호 </th>	<th> 제 목 </th>	<th> 작 성 자 </th>	<th> 조 회 수 </th>	<th> 작 성 일 </th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="dto" items="${list}">
							<tr>
								<td>${dto.board_no}</td>
								<td>
									<a href="${pageContext.request.contextPath}/board/free/detail?board_no=${dto.board_no}">
												${dto.title}
									</a>
								</td>
									<td>${dto.writer}</td>		<td>${dto.view_cnt}</td>		<td>${dto.write_date}</td>
								</tr>
						</c:forEach>
								
					</tbody>
				</table>
								
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>