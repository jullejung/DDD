<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 가입</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<style type="text/css">
	.id_input_re_1{
		color : green;
		display : none;
	}
	/* 중복아이디 존재하는 경우 */
	.id_input_re_2{
		color : red;
		display : none;
	}
		</style>
	</head>
	
	<body style="position: absolute; width: 100%; height: 100%;">
		<br><br>
	<form action="${pageContext.request.contextPath}/login/project_login" method="get">
	<div class="container">
		<div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h1 class="panel-title"> 회원가입</h1>
                    </div>
                    <div class="panel-body">
                        <form id="signUpForm" role="form" method='post' action="/member/register">
                            <fieldset>
                            	아이디
                                <div class="form-group">
                                    <input class="form-control" placeholder="아이디(6~12자 이내, 영문/숫자 사용 가능)" id="user_id" name="user_id" type="text" value="" maxlength="12" autofocus>
									<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
									<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
                                </div>
								비밀번호
                                <div class="form-group">
                                    <input class="form-control" placeholder="비밀번호(8자 이상, 문자/숫자/기호 사용 가능)" id="user_pwd" name="user_pwd" type="password" value="">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="비밀번호재확인(비밀번호랑 같게 입력해주세요)" id="user_mpwd" name="user_mpwd" type="password" value="">
                                </div>
								이름
                                <div class="form-group">
                                    <input class="form-control" placeholder="사용자이름(10자 이내, 영문/숫자/기호 사용 가능)" id="user_name" name="user_name" type="text" value="" maxlength="10">
                                </div>
				                              닉네임
                                <div class="form-group">
                                    <input class="form-control" placeholder="사용할 닉네임을 입력해 주세요" id="nicname" name="nicname" type="text" value="" maxlength="10">
                                </div>
                               	 휴대전화
                                <div class="input-group-append">
                                    <input class="form-control" placeholder="전화번호입력" id="pone" name="pone" type="tel" value="">
                                </div>
                                <br>
                                <br>
                                <button type="submit" id="joinbtn" class="btn btn-lg btn-success btn-block">회원가입</button>
                                <button type="button" id="btn" class="btn btn-lg btn-info btn-block">회원가입 취소</button>
                            </fieldset>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	</form>
		<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>
	
	<script type="text/javascript">
  	
 		$(document).ready(function(){
 			
 			//아이디 중복 체크
				$("#user_id").on("propertychange change keyup paste input", function(){

					var memberId = $("#user_id").val();			// .id_input에 입력되는 값
					var data = {memberId : memberId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
					
					$.ajax({
						type : "post",
						url : "/member/memberIdChk",
						data : data
					}); // ajax 종료	

				});// function 종료
				
				//아이디 중복 체크
				$("#user_id").on("propertychange change keyup paste input", function(){

					var memberId = $("#user_id").val();			// .id_input에 입력되는 값
					var data = {memberId : memberId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
					
					$.ajax({
						type : "post",
						url : "/member/memberIdChk",
						data : data
					}); // ajax 종료	

				});// function 종료
 			
 			// 회원 가입 취소 시 
 			$("#btn").on("click", function(){
 				location.href = "/member/login";
 			});
 			
			// 회원 가입 시  
 			$("#joinbtn").on("click", function(){
 				
 				// 아이디를 입력하지 않았을 경우  
 				if($("#user_id").val()==""){
 					alert("아이디를 입력해주세요.");
 					$("#user_id").focus();
 					return false;
 				}
 				
 				// 아이디의 길이가 6~12자 범위에 포함되지 않을 경우 
 				if($("#user_id").val().length < 6 || $("#user_id").val().length > 12) {
 					alert("아이디는 6~12자 이내로 입력해주세요.")
 					$("#user_id").focus();
 					return false;
 				}
 				
 				
 				// 비밀번호를 입력하지 않았을 경우 
 				if($("#user_pwd").val()==""){
 					alert("비밀번호를 입력해주세요.");
 					$("#userpw").focus();
 					return false;
 				}
 				
 				// 비밀번호의 길이가 8자보다 짧을 경우 
 				if($("#user_pwd").val().length < 8){
 					alert("비밀번호는 8자 이상 입력해주세요.");
 					$("#user_pwd").focus();
 					return false;
 				}
 				
 				// 비밀번호가 틀린 경우 
 				if($("#user_mpwd").val().length < 8){
 					alert("비밀번호랑 같지가 않습니다 다시 확인해 주세요 ");
 					$("#user_mpwd").focus();
 					return false;
 				}
 				
 				// 사용자 이름을 입력하지 않았을 경우 
 				if($("#user_name").val()==""){
 					alert("사용자 이름을 입력해주세요.");
 					$("#user_name").focus();
 					return false;
 				}
 				
 				// 사용자 이름이 10자 보다 길 경우 
 				if($("#user_name").val().length > 10){
					alert("사용자 이름은 10자 이내로 입력해주세요.");
					$("#user_name").focus();
					return false;
				}
 				
 				// 닉네임을 입력하지 않았을 경우 
 				if($("#nicname").val()==""){
 					alert("닉네임을 입력해주세요.");
 					$("#nicname").focus();
 					return false;
 				}
 				
 				// 닉네임이 10자 보다 길 경우 
 				if($("#nicname").val().length > 10){
					alert("닉네임은 10자 이내로 입력해주세요.");
					$("#nicname").focus();
					return false;
				}
				
				// 모두 이상 없을 경우 회원 가입 버튼 동작 
				$("#joinbtn").submit();
				alert("회원가입이 완료되었습니다. 로그인해주세요.");
 			}); 
 		});
 </script>