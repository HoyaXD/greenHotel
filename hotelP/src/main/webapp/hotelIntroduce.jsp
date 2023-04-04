<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
            width: 100%;
            height: 100%;
            margin: 0 auto;
            margin-top: 30px;
            display: block;
        }
 
</style>
</head>
<body>
<%@ include file="header.jsp" %>
	<div class="menubox">
        <br><div id="menuName"><li>호텔 소개</li><br></div>
        <div id="hrLine"><hr></div>
        
		<div class="main">
        <img src="img/hotel.jpg">
    </div>

        <div><li>그린호텔(GREEN HOTEL)는 대한민국 최대 규모 호텔그룹입니다.</li></div>
        <div><li>이제 아시아를 넘어 세계로 뻗어가는 글로벌 호텔로서 전세계 어디에서나 한결같이 품격있는 서비스와 시설로 고객에게 깊은 감동을 주는 브랜드를 지향하고 있습니다.</li></div>
        <br>
        <div><li>균형 있는 라이프스타일을 추구하며 품격의 가치를 아는 고객을 위해 세련되고 모던한 감각을 지닌 안락한 객실과 세심한 배려가 묻어나는 서비스를 준비합니다.</li></div>
		<div><li>또한 그린호텔만의 감각적인 오트 퀴진과 다양한 경험을 제공하는 호텔시설은 감동을 더해드립니다.</li></div>
        <br>
        <div><li>그린호텔에서 품격 있는 휴식으로 삶의 균형을 완성해가시길 바랍니다.</li></div>
        
        <br>
    </div>
    
<%@ include file="footer.jsp" %>
<script>
const img = document.querySelector("img");
const id = document.querySelector("#id");

img.addEventListener("click", function(event){
	if(id!=null){
		alert("관리자 페이지 이동을 위한 로그아웃");
		location.href='hotelMemberLogoutServlet.do';
		location.href='adMainPage.jsp';
	}if(id==null){
		alert("관리자 페이지 이동");
		location.href='adMainPage.jsp';
	}
});
</script>
</body>
</html>