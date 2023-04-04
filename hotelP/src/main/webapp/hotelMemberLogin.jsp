<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        @font-face {
            font-family: 'Pretendard-Regular';
            src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
            font-weight: 400;
            font-style: normal;
        }

        * {
            font-family: 'Pretendard-Regular';
            text-decoration: none;
            color: black;


        }
        section {
            width: 1200px;
            margin: 0 auto;
            text-align: center;
        }

        li {
            list-style-type: none;
        }

        .cols {
            padding: 5px
        }

        .cols li {
            display: inline-block;
        }

        .col1 {
            width: 120px;
        }

        .col2 input,
        select {
            width: 200px;
            height: 28px;
        }

        #buttons {
            text-align: center;
            
        }

        #buttons button {
            padding: 8px 16px;
            margin-top: 20px;
            margin-left: 30px;
        }

        .menubox {
            width: 1200px;
            height: 150px;
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
            width: 800px;
            height: 3px;
            margin-left: 17%;
            
        }
        #menutext{
            text-align: left;
            margin-left: 30%;
        }
        section{
        	margin-top: 20px;
        	width: 500px;
        }

    </style>
    <script src="js/jquery-3.3.1.min.js"></script>
    
</head>
<body>
    <%@ include file="header.jsp" %>

    <div class="menubox">
        <br><div id="menuName"><li>로그인</li><br></div>
        <div id="hrLine"><hr></div>
        <br>
        <div id="menutext"><li>그린호텔에 오신 것을 환영합니다.</li></div>
        <div id="menutext"><li>그린호텔의 아이디와 비밀번호를 입력해주세요.</li></div>
    </div>
    <section>
        <form action="hotelMemberLoginServlet.do" method="post">
            <table class="ja">
                <ul id="join">
                    <li>
                        <ul class="cols">
                            <li class="col1">아이디</li>
                            <li class="col2"><input type="text" id="id" name="id"></li>

                        </ul>
                    </li>
                    <li>
                        <ul class="cols">
                            <li class="col1">비밀번호</li>
                            <li class="col2"><input type="password" id="pw" name="pw"></li>
                        </ul>
                    </li>
                    <div id="buttons">
                        <button onclick="return log()">로그인</button>
                        <button onclick="location.href='hotelMemberReg.jsp' ">회원가입</button>
                    </div>
                </ul>
            </table>
        </form>
    </section>
<%@ include file="footer.jsp" %>

<script>
function log(){
	if($("#id").val()==""){
		alert("아이디를 입력해주세요!");
		$("#id").focus;
		return false;
	}else if($("#pw").val()==""){
		alert("비밀번호를 입력해주세요!");
		$("#pw").focus;
		return false;
	}else{
		return true;
	}	
}

</script>
</body>
</html>