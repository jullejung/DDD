<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title> QnA 등록 </title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	</head>
	<body>
	<%@ include file="/WEB-INF/views/header5.jsp" %>
		<form action="${pageContext.request.contextPath}/" method="get">
	<div class="container">
		<div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h1 class="panel-title"> QnA 등록 </h1>
                    </div>
                    <div class="panel-body">
                            	제목<input class="form-control" placeholder="제목을 입력해 주세요" 
                                    id="" name="" type="text" value="" maxlength="20" autofocus>
                                </div>
                                <br>
                                <div class="form-group">
                               	닉네임<input class="form-control" placeholder="" id="" name="" type="text" value="">
                                </div>
                                <br>
								<div class="form-inline">
								파일첨부<input type="file" id="thumbnail" name="thumbnail" class="form-control">
									<label for="thumbnail" id="thumbnail_label" class="write_label"></label>
									<button type="submit" class="form-control btn btn-primary"> 파일 등록  </button>
								</div>
								<br>
								<div class="form-group">
                               	내용<textarea rows="10" id="" name=""
									class="form-control"></textarea>
								<script type="text/javascript">
								CKEDITOR.replace('contents');
								</script>
						<label id="contents_label" for="contents" class="write_label"></label>

                                
                                <br>
                                <br>
                                <button type="button" id="btn" class="">취 소</button>
                                <button type="submit" id="btn2" class=" float-right">등 록</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
	</form>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
	
		
</html>
