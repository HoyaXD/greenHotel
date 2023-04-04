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
        form{
          margin: 0 auto;
          width: 200px;
        
        }
</style>
</head>
<body>
 <%@ include file="adMenu.jsp" %>
	<div class="menubox">
        <br><div id="menuName"><li>관리자 고객 문의</li><br></div>
        <div id="hrLine"><hr></div>
        <br>
    </div>
<table id="MView">
	<thead>
		<tr>
			<th>번호</th><th>작성자</th><th>제목</th><th>문의하기</th>
		</tr>
	</thead>
	<tbody id="tbody">
	
	</tbody>
	</table>
	<div class="ddd">
		<form action="hmBoard.do" method="POST">
			<table>
				<ul id ="join">
					<li>
						<ul class="cols">
							<li class="col1">게시물번호</li>
							<li class="col2"><input type="text" id="mnum" name="mnum" readonly></li>
						</ul>
					</li>
					<li>
						<ul class="cols">
							<li class="col1">아이디</li>
							<li class="col2"><input type="text" id="mid" name="mid" readonly></li>
						</ul>
					</li>
					<li>
						<ul class="cols">
							<li class="col1">제목</li>
							<li class="col2"><input type="text" id="mtitle" name="mtitle"></li>
						</ul>
					</li>
					<li>
						<ul class="cols">
							<li class="col1">내용</li>
							<li class="col2"><textarea id="mcontents" name="mcontents"></textarea>
						</ul>
					</li>
					<li>
						<button>등록하기</button>
					</li>
				</ul>
			</table>
		</form>
	
	</div>
	


<%@ include file="footer.jsp" %>

<script>
//회원목록 출력
getList();
const tbody = document.querySelector("#tbody"); 
const button = document.querySelector("button"); 

const mid = document.querySelector("#mid"); 
const mnum = document.querySelector("#mnum"); 

function getList(){
	const xhr = new XMLHttpRequest();
	xhr.onload = function(){
		
		let data = this.responseText;
		let list = JSON.parse(data);
		
		for(let i = 0; i < list.length; i++){
			tbody.innerHTML += "<tr><td>" + list[i].num + "</td><td>" + list[i].id + 
			
			 "</td><td>" + list[i].title + "</td><td>" + "<button>답변하기" +"</td></tr>";
		}
	}
	const url = "admBoardVIewServlet.do";
	xhr.open("get", url);
	xhr.send();
}

tbody.addEventListener("click", detailView)
function detailView(e){
	const xhttp = new XMLHttpRequest();
	  xhttp.onload = function() {
		  tbody.replaceChildren();
		  getList();
	    }

	  mnum.value = e.target.parentElement.parentElement.firstChild.innerText;
	  mid.value = e.target.parentElement.parentElement.firstChild.nextElementSibling.innerText;
	  let mtitle = document.querySelector("input[name='mtitle']").value;
	  let mcontents = document.querySelector("input[name='mcontents']").value;
	  let data = "mnum=" + mnum + "&mid=" + mid + "&mtitle=" + mtitle +
		"&mcontents=" + mcontents;
	  alert(data);

	  xhttp.open("GET", "", true);
      xhttp.send();
}

</script>
</body>
</html>