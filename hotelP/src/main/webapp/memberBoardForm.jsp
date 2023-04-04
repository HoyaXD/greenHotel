<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        #buttons{
            text-align: center;
        }
        #buttons button{
            padding: 8px 16px;
            margin-top: 20px;
        }
		input{
			width: 150px;
		}
		textarea{
			width: 400px;
			height: 300px;
		}.menubox {
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
        #box{
        	width: 500px;
        	margin: 0 auto;
        }
        button{
        	margin-left:150px;
        	padding: 8px 16px;
        }
        #box2{
        	margin: 0 auto;
        	width: 300px;
        	margin-top: 20px;
        }
	
</style>
</head>
<body>
 <%@ include file="header.jsp" %>
<section>
	<div class="menubox">
        <br><div id="menuName"><li>고객 문의</li><br></div>
        <div id="hrLine"><hr></div>
        <br>
        <div id="menutext"><li>그린호텔에 오신 것을 환영합니다.</li></div>
        <div id="menutext"><li>그린호텔에 문의하고 싶은 것을 등록해주세요.</li></div>
    </div>
    <div id="box">
		<form action="hmBoard.do" method="POST">
			<table>
				<ul id ="join">
					<li>
						<ul class="cols">
							<li class="col1">아이디</li>
							<li class="col2"><input type="text" name="id" value=<%=id%> readonly></li>
						</ul>
					</li>
					<li>
						<ul class="cols">
							<li class="col1">제목</li>
							<li class="col2"><input type="text" name="title"></li>
						</ul>
					</li>
					<li>
						<ul class="cols">
							<li class="col1">내용</li>
							<li class="col2"><textarea name="contents"></textarea>
						</ul>
					</li>
					<li>
						<button>등록하기</button>
					</li>
				</ul>
			</table>
		</form>
	</div>
	<div id="box2">
		<div><li>나의 문의함</li></div>
		<div>
			<table id="MView">
				<thead>
					<tr>
						<th>번호</th><th>제목</th>
					</tr>
				</thead>
				<tbody id="tbody">
				
				</tbody>
			</table>
		</div>
	</div>
</section>
<%@ include file="footer.jsp" %>

<script>
//회원의 문의함만 보기

const tbody = document.querySelector("#tbody"); 
list();

function list() {
		let getId = document.querySelector("#id").innerText;

		const xhttp = new XMLHttpRequest();
		xhttp.onload = function() {
			let data = this.responseText; 
			let list = JSON.parse(data);
			for(let i = 0; i < list.length; i++){
				tbody.innerHTML += "<tr><td>" + (i+"1") + "</td><td>" + list[i].title + "</td></tr>";
			}			
		}
	xhttp.open("GET", "myBoardListViewServlet.do?id=" + getId, true);
	xhttp.send();   
}
</script>

</body>
</html>