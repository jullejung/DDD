<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 생일 카페 </title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyCc334s_i0SLsa_o7--6D2BGAkX4mLCcHs" ></script>
		<style>
			#map_ma {width:100%; height:150px; clear:both; border:solid 1px red;}
		</style>
	</head>
	<body>
	<%@ include file="/WEB-INF/views/header5.jsp" %>
		<form action="${pageContext.request.contextPath}/" method="get">
	<div class="container">
		<div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h1 class="panel-title"> 생일 카페 등록</h1>
                    </div>
                    <div class="panel-body">
                            	
                                <div class="form-group">
								제목<input class="form-control" placeholder="제목을 입력해 주세요" 
                                    id="" name="" type="text" value="" maxlength="20" autofocus>
                                </div>
                                <div class="form-group">
                               	진행 날짜<input class="form-control" placeholder="진행날짜를 입력해주세요" id="" name="" type="text" value="">
                                </div>
                                
								<br><br><br>
								<div class="form-inline">
									<input type="file" id="thumbnail" name="thumbnail" class="form-control">
									<label for="thumbnail" id="thumbnail_label" class="write_label"></label>
									<button type="submit" class="btn btn-primary"> 이미지 등록  </button>
								</div>
                                <br><br><br>
								우편 번호
								<a href="${pageContext.request.contextPath}">
									<button onclick="openDaumAddr();"> 열기 </button>
								</a>
								<input type="text" id="post_code" name="post_code" class="form-control" readonly="readonly">
								<br>
								상세주소 <input class="form-control" type="text" id="addr1" name="addr1" readonly="readonly">
								
								지도<div id="map_ma"></div>

                                
                                <br>
                                <br>
                                <button type="submit" id="joinbtn" class="btn btn-lg btn-success btn-block">등 록</button>
                                <button type="button" id="btn" class="btn btn-lg btn-info btn-block">회원가입 취소</button>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                    </div>
                </div>
            </div>
        </div>
    </div>
	</form>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
	<script>
			function openDaumAddr() {
		 	   new daum.Postcode({
		 	       oncomplete: function(data) {
		 	    	  // alert(data.zonecode);
		 	    	  post_code.value = data.zonecode;
		 	    	  addr1.value = data.address;
					}
		    	}).open();
			}
		</script>
	<script type="text/javascript">
		$(document).ready(function() {
			var myLatlng = new google.maps.LatLng(37.558271,126.925558); // 위치값 위도 경도
	var Y_point			= 37.558271;		// Y 좌표
	var X_point			= 126.925558;		// X 좌표
	var zoomLevel		= 18;				// 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
	var markerTitle		= "홍대 입구";		// 현재 위치 마커에 마우스를 오버을때 나타나는 정보
	var markerMaxWidth	= 300;				// 마커를 클릭했을때 나타나는 말풍선의 최대 크기

// 말풍선 내용
	var contentString	= '<div>' +
	'<h2>대구남구</h2>'+
	'<p>안녕하세요. 구글지도입니다.</p>' +
	
	'</div>';
	var myLatlng = new google.maps.LatLng(Y_point, X_point);
	var mapOptions = {
						zoom: zoomLevel,
						center: myLatlng,
						mapTypeId: google.maps.MapTypeId.ROADMAP
					}
	var map = new google.maps.Map(document.getElementById('map_ma'), mapOptions);
	var marker = new google.maps.Marker({
											position: myLatlng,
											map: map,
											title: markerTitle
	});
	var infowindow = new google.maps.InfoWindow(
												{
													content: contentString,
													maxWizzzdth: markerMaxWidth
												}
			);
	google.maps.event.addListener(marker, 'click', function() {
		infowindow.open(map, marker);
	});
});
		</script>
		
</html>
