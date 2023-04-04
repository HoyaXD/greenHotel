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
            margin-right: 20px;
        }
   
        #box{
        	width: 500px;
        	margin: 0 auto;
        }
        
</style>
</head>
<body>
 <%@ include file="header.jsp" %>
<section>
	<div class="menubox">
        <br><div id="menuName"><li>회원정보수정</li><br></div>
        <div id="hrLine"><hr></div>
        <br>
        <div id="menutext"><li>그린호텔에 오신 것을 환영합니다.</li></div>
    </div>
 
	<form name="frm" action="memberUpdateServlet.do" method="post">
	<div id="box">
	<table>
		<ul id ="join">
			<li>
				<ul class="cols">
					<li class="col1">아이디</li>
					<li class="col2"><input type="text" name="id" value="<%=id%>" readonly></li>
					
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">비밀번호</li>
	                <li class="col2"><input type="password" name="pw"></li>
	            </ul>
	        </li>
	        <li>
				<ul class="cols">
					<li class="col1">이름</li>
	                <li class="col2"><input type="text" name="name"></li>
	            </ul>
	        </li>
	        <li>
				<ul class="cols">
					<li class="col1">연락처</li>
	                <li class="col2"><input type="text" name="tel"></li>
	            </ul>
	        </li>
	        <div id="buttons">
	        	<button onclick="return check()">수정</button>
	        </div>
		</ul>
		</table>
		</div>
	</form>
</section>
<%@ include file="footer.jsp" %>
<script>
function check(){
	if(document.frm.pw.value==""){
		alert("비밀번호를 입력해주세요");
		document.frm.pw.focus();
		return false;
	}else if(document.frm.name.value==""){
		alert("이름을 입력해주세요");
		document.frm.name.focus();
		return false;
	}else if(document.frm.tel.value==""){
		alert("전화번호를 입력해주세요");
		document.frm.tel.focus();
		return false;
	}else {
		alert("수정 완료");
		return true;
	}
}
</script>
</body>
</html>