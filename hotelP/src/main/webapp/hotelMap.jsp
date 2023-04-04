<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>지도 정보 얻어오기</title>
    <style>
	.menubox {
            width: 1200px;
            text-align: center;
            list-style: none;
            margin: 0 auto;
            margin-top: 50px;
        }
        #menuName{
            width: 1200px;
            font-size: 30px;
            text-align: left;
            margin-left: 30%;
        }
        #hrLine{
            width: 1000px;
            height: 3px;
            margin: 0 auto;
        }
        .main img{
            width: 80%;
            height: 80%;
            margin: 0 auto;
            margin-top: 30px;
            display: block;
        }
 
</style>
    
</head>
<body>
<%@ include file="header.jsp" %>

<div class="menubox">
        <br><div id="menuName"><li>찾아오시는 길</li><br></div>
        <div id="hrLine"><hr></div>
        
		<div class="main">
        <img src="img/map.jpg">
    </div>
<%@ include file="footer.jsp" %>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=354141e85012266b720e43d26d24c3ac"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.19144472050145, 128.08049388972347), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 
</script>
</body>
</html>