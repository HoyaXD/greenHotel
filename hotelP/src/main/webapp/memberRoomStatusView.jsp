<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        table{
        border: solid 1px red;
        margin: 0 auto;
        padding: 8px 16px;
        text-align: center;
        font-size:20px;
        
        
        }
    </style>
<title>Insert title here</title>
</head>
<body>
 <%@ include file="header.jsp" %>
     <div class="menubox">
        <br><div id="menuName"><li>회원님의 예약 목록</li><br></div>
        <div id="hrLine"><hr></div>
        <br>
        <div id="menutext"><li>그린호텔에 오신 것을 환영합니다.</li></div>
    </div>

<table id="MView">
	<thead>
		<tr>
			<th>아이디</th><th>이름</th><th>방 번호</th><th>체크인</th><th>체크아웃</th><th>숙박기간</th>
		</tr>
	</thead>
	<tbody id="tbody">
	
	</tbody>
</table>
<%@ include file="footer.jsp" %>

<script>

const tbody = document.querySelector("#tbody"); 
list();

function list() {
		let getId = document.querySelector("#id").innerText;
	
		const xhttp = new XMLHttpRequest();
		xhttp.onload = function() {
			let data = this.responseText; 
			let list = JSON.parse(data);
			for(let i = 0; i < list.length; i++){
				tbody.innerHTML += "<tr><td>" + list[i].id + "</td><td>" + list[i].name + 
									"</td><td>" + list[i].roomnumber + "</td><td>" + list[i].checkin +
									"</td><td>" + list[i].checkout + "</td><td>" + list[i].stayday + "박"+ "</td></tr>";
			}			
		}
	xhttp.open("GET", "myReservationServlet.do?id=" + getId, true);
	xhttp.send();   
}
</script>
</body>
</html>