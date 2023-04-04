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
</head>
<body>
 <%@ include file="adMenu.jsp" %>
<div class="menubox">
        <br><div id="menuName"><li>회원 관리</li><br></div>
        <div id="hrLine"><hr></div>
        <br>
    </div>
<table id="MView">
	<thead>
		<tr>
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>성별</th><th>연락처</th><th>삭제</th>
		</tr>
	</thead>
	<tbody id="tbody">
	
	</tbody>
</table>
<%@ include file="footer.jsp" %>
<script>
//회원목록 출력
getList();
const tbody = document.querySelector("#tbody"); 
const button = document.querySelector("button"); 

function getList(){
	const xhr = new XMLHttpRequest();
	xhr.onload = function(){
		
		let data = this.responseText;
		let list = JSON.parse(data);
		
		for(let i = 0; i < list.length; i++){
			tbody.innerHTML += "<tr><td>" + list[i].id + "</td><td>" + list[i].pw + 
			"</td><td>" + list[i].name + "</td><td>" + list[i].gender +
			"</td><td>" + list[i].tel +
			"</td><td>" + "<button>삭제" +"</td></tr>";
		}
	}
	const url = "adViewMemberServlet.do";
	xhr.open("get", url);
	xhr.send();
}

tbody.addEventListener("click", delMember)
function delMember(e) {
	const xhttp = new XMLHttpRequest();
	  xhttp.onload = function() {
		  tbody.replaceChildren();
		  getList();
	    }
	  
	  //document.querySelector("button").parentElement.parentElement.firstChild.innerText;
	  let id = e.target.parentElement.parentElement.firstChild.innerText;
	  xhttp.open("GET", "delMemberServlet.do?id=" + id, true);
      xhttp.send();
}

</script>
</body>
</html>