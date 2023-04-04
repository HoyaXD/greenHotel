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
        table{
        margin: 0 auto;
        padding: 8px 16px;
        text-align: center;
        font-size:20px;
        
        }
</style>
<script src="js/jquery-3.3.1.min.js"></script>
</head>
<body>

<%@ include file="adMenu.jsp" %>
<div class="menubox">
        <br><div id="menuName"><li>전체 예약 목록</li><br></div>
        <div id="hrLine"><hr></div>
        <br>
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

getList();
const tbody = document.querySelector("#tbody"); 
function getList(){
	const xhr = new XMLHttpRequest();
	xhr.onload = function(){
		
		let data = this.responseText;
		let list = JSON.parse(data);
		
		for(let i = 0; i < list.length; i++){
			tbody.innerHTML += "<tr><td>" + list[i].id + "</td><td>" + list[i].name + 
			"</td><td>" + list[i].roomnumber + "</td><td>" + list[i].checkin +
			"</td><td>" + list[i].checkout + "</td><td>" + list[i].stayday + "박"+ "</td></tr>";
		}
	}
	const url = "adReservationView.do";
	xhr.open("get", url);
	xhr.send();
}


</script>
</body>
</html>