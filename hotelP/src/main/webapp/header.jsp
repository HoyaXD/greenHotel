<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
       *{
            margin: 0;
            padding: 0;
            text-decoration: none;
            color: black;
            font-family: 'Pretendard-Regular';

        }
        @font-face {
        font-family: 'Pretendard-Regular';
        src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
        font-weight: 400;
        font-style: normal;
        }

        header{
        	margin: 0 auto;
            text-align: center;
            display: block;
            color: #000;
            text-decoration: none;
            width: 1200px; 
        
        }
        #menu{
            text-decoration: none;
            display: block;
            font-size: 1.1em;
            font-weight: bold;
            transition: color 0.5s ease;
        }
        li {
            list-style: none;
        }
        #mainMenu {
            display: inline-block;
            position: relative;
        }
        #mainMenu ul li {
            float: left;
            height: 40px;
            width:290px;
            line-height: 40px;            
        }
        #mainMenu span {
            display: block;
            border-bottom: 2px solid #f7be9a;
            height: 40px;
            width: 290px;
            position: absolute;
            left: 0;
            top: 0;
            z-index: -1;
        }
        .loginArea h1{
            float: left;
            margin-left: 42.7%;
            font-size: 40px;
        }
        .loginArea{
            text-align: right;
            list-style:none;
        }
        .loginArea li{
            float: right;
            width: 65px;
            line-height: 40px;
            font-size: 12px;  
            padding-right: 10px;
        }
</style>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script>
        $(document).ready(function() {
            var w = $("#mainMenu ul li").width();            
            $("#mainMenu").append("<span></span>");
            $("#mainMenu ul li").on("mouseenter focusin", function() {
                var index = $(this).index(); // index() 메서드는 각 li의 index를 취득하는 메서드입니다.
                console.log(index); // 각 li에 마우스를 오버하면 0, 1, 2, 3
                $(this).find("#menu").addClass("on");
                $(this).siblings().find("#menu").removeClass("on");
                $("#mainMenu span").stop().animate({
                    left: index * w // 0 * 150, 1 *  150, 2 * 150, 3 * 150
                }, "fast", "swing");
            });
            $("#mainMenu ul li:eq(0)").trigger("mouseenter");           
        });
    </script>
</head>
<body>
<%
String id = (String)session.getAttribute("id");
if(id==null){
%>
    <header>
        <div class="loginArea">
            <li><a href="memberMyPage.jsp">마이 페이지</a></li>
            <li><a href="memberRoomStatusView.jsp">예약 확인</a></li>
            <li><a href="hotelMemberReg.jsp">회원가입</a></li>
            <li><a href="hotelMemberLogin.jsp">로그인</a></li>
            <h1><a href="mainPage.jsp"> Green Hotel</a></h1>
        </div>
        <nav id="mainMenu">
            <ul>
                <li><a id="menu" href="hotelIntroduce.jsp">호텔 소개</a></li>
                <li><a id="menu" href="bookingForm.jsp">예약</a></li>
                <li><a id="menu" href="memberBoardForm.jsp">고객 문의</a></li>
                <li><a id="menu" href="hotelMap.jsp">찾아오시는 길</a></li>
            </ul>
        </nav>
    </header>
<%
}else if(id!=null){
%>
    <header>
        <div class="loginArea">
            <li><a href="memberMyPage.jsp">마이 페이지</a></li>
            <li><a href="memberRoomStatusView.jsp">예약 확인</a></li>
            <li><a href="hotelMemberLogoutServlet.do">로그아웃</a></li>
            <li id="id"><%=id%></li>
            <h1><a href="mainPage.jsp"> Green Hotel</a></h1>
        </div>
        <nav id="mainMenu">
            <ul>
                <li><a id="menu" href="hotelIntroduce.jsp">호텔 소개</a></li>
                <li><a id="menu" href="bookingForm.jsp">예약</a></li>
                <li><a id="menu" href="memberBoardForm.jsp">고객 문의</a></li>
                <li><a id="menu" href="hotelMap.jsp">찾아오시는 길</a></li>
            </ul>
        </nav>
<%
}
%>
    </header>
</body>
</html>