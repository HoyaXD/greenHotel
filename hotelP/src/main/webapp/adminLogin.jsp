<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>

<style>
		h3, #join{
            margin: 20px 0 0 30px;
        }
        #join{
            border-top: solid 1px #cccccc;
            border-bottom: solid 1px #cccccc;
            padding: 20px;
            width: 480px;
        }
        .cols{
            padding: 5px
        }
        .cols li{
            display: inline-block;
        }
        .col1{
            width: 120px;
        }
        .col2 input, select{
            width: 200px;
            height: 28px;
        }
        #buttons{
            text-align: center;
        }
        #buttons button{
            padding: 8px 16px;
            margin-top: 20px;
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
        	margin: 0 auto;
        	margin-top: 20px;
        	width: 500px;
        }
</style>
</head>
<body>
 <%@ include file="header.jsp" %>
 	<div class="menubox">
        <br><div id="menuName"><li>관리자 로그인</li><br></div>
        <div id="hrLine"><hr></div>
        <br>
    </div>
<section>
	<form action="aLcServlet.do" method="post">
	<table>
		<ul id ="join">
			<li>
				<ul class="cols">
					<li class="col1">아이디</li>
					<li class="col2"><input type="text" name="id"></li>
					
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">비밀번호</li>
	                <li class="col2"><input type="password" name="pw"></li>
	            </ul>
	        </li>
	        <div id="buttons">
	        	<button onclick="return log()">로그인</button>
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