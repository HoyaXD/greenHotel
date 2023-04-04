<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
        .main img{
            width: 100%;
            height: 100%;
            margin: auto;
            margin-top: 30px;
            display: block;
        }
        #ro{
            margin-top: 100px;
        }
        .main2 img{
            margin-top: 50px;
            width: 340px;
            height: 240px;
            margin-right: 30px;
        }
        .main2{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .main2 hr{
            width: 340px;
        }
        .footer{
        	margin-top: 40px;
            text-align: center;
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
 
     <%@ include file="header.jsp" %>
    
    <div class="main">
        <img src="img/room2.jpg">
    </div>
    <div class="main2">
        <div id="main2_1">
            <div id="ro">Room Packages & Offers</div>
            <img src="img/main2_1.jpg">
            <ul>
                <br><br>
                <li>WINTER</li>
                <li>HOLIDAY</li>
            </ul>
            <br>
            <hr>
            <ul>
                <br><br>
                <li>그린호텔에서 제공하는</li>
                <li>다양한 혜택을 확인해보세요.</li>
                <br>
            </ul>
        </div>
        <div id="main2_2">
            <div id="ro"></div>
            <img src="img/main2_2.jpg">
            <ul>
                <br><br>
                <li>WINTER</li>
                <li>HOLIDAY</li>
            </ul>
            <br>
            <hr>
            <ul>
                <br><br>
                <li>고객님의 여유로운 숙박을 위해</li>
                <li>조식포함 상품을 준비하였습니다.</li>
            </ul>
        </div>
        <div id="main2_3">
            <div id="ro"></div>
            <img src="img/main2_3.jpg">
            <ul>
                <br><br>
                <li>WINTER</li>
                <li>HOLIDAY</li>
            </ul>
            <br>
            <hr>
            <ul>
                <br><br>
                

                <li>전 세계 그린호텔앤리조트의 객실을</li>
                <li>리워즈 회원 전용 가격으로 만나보세요</li>
            </ul>
        </div>
    </div>
 <%@ include file="footer.jsp" %>

</body>
</html>