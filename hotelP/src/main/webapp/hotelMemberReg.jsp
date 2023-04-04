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

        #buttons button, input {
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

</head>
<body>
<%@ include file="header.jsp" %>
	<div class="menubox">
        <br>
        <div id="menuName"><li>회원가입</li><br></div>
        <div id="hrLine"><hr></div>
        <br>
        <div id="menutext"><li>그린호텔에 오신 것을 환영합니다.</li></div>
        <div id="menutext"><li>회원가입으로 다양한 혜택을 누리세요.</li></div>
    </div>
    <section>
		<form name="frm" action="hotelMemberRegServlet.do" method="post">
		<table>
			<ul id ="join">
				<li>
					<ul class="cols">
						<li class="col1">아이디</li>
						<li class="col2"><input type="text" name="id"></li>
						<li><input type="button" onclick="idOverlapCheck()" value="중복확인">
						<div id="demo" name="demo"><input type="hidden" name="flag"></div>
						
						</li>
						
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
						<li class="col1" style="margin-right:19px">성별</li>
		                <li class="radio2" style="margin-right:50px"><input type="radio" name="gender" value="M">남성</li>
		                <li class="radio2" style="margin-right:50px"><input type="radio" name="gender" value="W">여성</li>
 
		            </ul>
		        </li>
				<li>
					<ul class="cols">
						<li class="col1">전화번호</li>
		                <li class="col2"><input type="text" name="tel"></li>
		            </ul>
		        </li>
		        <div id="buttons">
		        	<input type="submit" value="회원가입" onclick="return check()">
		        </div>
			</ul>
			</table>
		</form>
</section>
<%@ include file="footer.jsp" %>

<script>
function check(){
	if(document.frm.id.value==""){
		alert("아이디를 입력해주세요!");
		document.frm.id.focus();
		return false;
	}else if(document.frm.pw.value==""){
		alert("비밀번호를 입력해주세요");
		document.frm.pw.focus();
		return false;
	}else if(document.frm.name.value==""){
		alert("이름을 입력해주세요");
		document.frm.name.focus();
		return false;
	}else if(document.frm.gender.value==""){
		alert("성별을 선택해주세요");
		document.frm.tel.focus();
		return false;
	}else if(document.frm.tel.value==""){
		alert("전화번호를 입력해주세요");
		document.frm.tel.focus();
		return false;
	}else if(document.getElementById("demo").innerText !="사용가능"){
		alert("아이디 중복체크를 해주세요!");
		document.frm.flag.focus();
		return false;
	}else {
		alert("등록 완료");
		return true;
	}
}
function idOverlapCheck(){
	if(document.frm.id.value==""){
		alert("id를 입력해주세요!");
		document.frm.id.focus();
		return;
	}
	let param = document.frm.id.value;
	let url = "idOverlapCheck.do?id=" + param;
	//window.open(url, "_blank", "width=450, height=200");
    
	  const xhttp = new XMLHttpRequest();
	  xhttp.onload = function() {
	    document.getElementById("demo").innerHTML = this.responseText;
	    }
	  xhttp.open("GET", url, true);
	  xhttp.send();

}
</script>


</body>
</html>