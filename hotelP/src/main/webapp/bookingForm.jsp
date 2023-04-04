<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		body{
			width: 1200px;
			margin: 0 auto;
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
        }
        .modal{
        	display: none;
        	
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
        section #a{
            width: 290px;
            margin: 0 auto;
            text-align: center;
            
        }
        section .modal{
            width: 600px;        
        	margin-left: 330px;	      	
        }
        .modal button{
        	margin-left: 150px;
        	padding: 8px 16px;
        }
        input[type=button], #reg_btn, #stay_btn{
        	padding: 8px 16px;
        }

</style>
</head>
<body>
    <%@ include file="header.jsp" %>

<!-- <form> -->
    <div class="menubox">
        <br><div id="menuName"><li>호텔 예약하기</li><br></div>
        <div id="hrLine"><hr></div>
        <br>
        <div id="menutext"><li>그린호텔에 오신 것을 환영합니다.</li></div>
    </div>
<section>
	<div id="a">
		<table>
			<tr>
				<th>
					<ul>
						<li>체크인</li>
					</ul>
				</th>
				<th>
					<ul>
						<li>날짜</li>
					</ul>
				</th>
				<th>
					<ul>
						<li>체크아웃</li>
					</ul>
				</th>
			<tr>
				<th>
					<ul id = "reg">
						<li><input type="date" id="checkin" name="checkin"></li>
					</ul>
				</th>
	
				<th>
					<ul id = "reg">
						<li><p id="stayDayCnt">1박</p></li>
					</ul>
				</th>
				<th>
					<ul id = "reg">
						<li><input type="date" id="checkout" name="checkout"></li>
					</ul>
				</th>
			</tr>
			<tr>
				<th>
					<ul>
					<li><input id="stay_btn" type="submit" onclick="getday()" value="확인"></li>
					</ul>
				</th>
				<th></th>
				<th>
					<ul>
					<li><button id="reg_btn">예약 진행</button></li>
					</ul>
				</th>
			</tr>
					
		</table>
	
	</div>	
<div class="modal">
	<form name="frm">
		<table> 
		<ul id ="join">
			<li>
				<ul class="cols">
					<li class="col1">아이디</li>
					<li class="col2"><input type="text" name="uid" value="<%=id %>" readonly></li>
					
				</ul>
			</li>
			<li>
				<ul class="cols">
					<li class="col1">예약할 이름</li>
	                <li class="col2"><input type="text" name="uname"></li>
	            </ul>
	        </li>
	        <li>
				<ul class="cols">
					<li class="col1">방 번호</li>
	                <li class="col2"><input type="text" name="uroomnumber"></li>
	            </ul>
	        </li>
	        <li>
				<ul class="cols">
					<li class="col1">체크인</li>
	                <li class="col2"><input type="text" id="ucheckin" name="ucheckin" readonly></li>
	            </ul>
	        </li>
	        <li>
				<ul class="cols">
					<li class="col1">체크아웃</li>
	                <li class="col2"><input type="text" id="ucheckout" name="ucheckout" readonly></li>
	                <input type="button" onclick="reservationCheck()" value="예약가능확인">
					<div id="demo" name="demo"></div>
	            </ul>
	        </li>
	        <li>
				<ul class="cols">
					<li class="col1">숙박 기간</li>
	                <li class="col2"><input type="text" id="ustayday" name="ustayday" readonly></li>
	            </ul>
	        </li>
	        
	        
	        <div>
	        	<button onclick="return regDoc()">예약하기</button>
	        </div>
		</ul>
		</table>
	</form>
</div>
</section>

<%@ include file="footer.jsp" %>

<script>

const reservation_tbl = document.querySelector("#reservation_tbl");
const stay_btn = document.querySelector("#stay_btn");
const reg_btn = document.querySelector("#reg_btn");
const modal = document.querySelector('.modal');
const btn_modal = document.querySelector('#btn_modal');
const ucheckin = document.querySelector('#ucheckin');// 모달창 체크인
const ucheckout = document.querySelector('#ucheckout');// 모달창 체크아웃
const ustayday = document.querySelector('#ustayday');//모달창 숙박기간

function getday(){
	const checkin = new Date(document.querySelector("#checkin").value);
	//체크인 날짜
	const checkout = new Date(document.querySelector("#checkout").value);
	//체크아웃 날짜
	const stayDayTime = checkout.getTime() - checkin.getTime();
	//머물 날짜 계산
    const stayDay = Math.round(stayDayTime / (24*60*60*1000));
	//머물 날짜 계산2
    document.querySelector("#stayDayCnt").innerText = stayDay + "박";
	//출력
    
}
//확인을 누르면 모달창이 나옴
reg_btn.addEventListener("click", function(event){
	 modal.style.display = 'inline-block';	//모달창 띄우기

	 reView();

});

	function reView(){
	 const checkin = new Date(document.querySelector("#checkin").value);
	 var checkinYear = checkin.getFullYear();
	 var checkinMonth = checkin.getMonth() + 1;
	 var checkinDay = checkin.getDate();
	 ucheckin.value = checkinYear + "년" + checkinMonth + "월" + checkinDay +"일";
		//체크인 날짜
	 const checkout = new Date(document.querySelector("#checkout").value);
	 var checkoutYear = checkout.getFullYear();
	 var checkoutMonth = checkout.getMonth() + 1;
	 var checkoutDay = checkout.getDate();
	 ucheckout.value = checkoutYear + "년" + checkoutMonth + "월" + checkoutDay +"일";
		//체크아웃 날짜
	 const stayDayTime = checkout.getTime() - checkin.getTime();
		//머물 날짜 계산
	 ustayday.value = Math.round(stayDayTime / (24*60*60*1000));
		//머물 날짜 계산2
	   // reservation_tbl.innerHTML = "<tr><td>" + "id" + "</td><td>" + "name" +  
	   // "</td><td>" + "방번호" + "</td><td>" + checkinymd + "</td><td>" + checkoutymd + 
	    // "</td><td>" + stayDay +"박" + "</td></tr>";
	  
	}

	//예약하기
	function regDoc() {
		
		const xhttp = new XMLHttpRequest();
		xhttp.onload = function() {
	    }
		xhttp.open("POST", "reservationServlet.do");
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		const checkin = new Date(document.querySelector("#checkin").value);
		 var checkinYear = checkin.getFullYear();
		 var checkinMonth = checkin.getMonth() + 1;
		 var checkinDay = checkin.getDate();
		 var checkinymd = checkinYear + "-" + checkinMonth + "-" + checkinDay +"-";
			//체크인 날짜
		 const checkout = new Date(document.querySelector("#checkout").value);
		 var checkoutYear = checkout.getFullYear();
		 var checkoutMonth = checkout.getMonth() + 1;
		 var checkoutDay = checkout.getDate();
		 var checkoutymd = checkoutYear + "-" + checkoutMonth + "-" + checkoutDay +"-";
			//체크아웃 날짜
		 const stayDayTime = checkout.getTime() - checkin.getTime();
			//머물 날짜 계산
		 const stayDay = Math.round(stayDayTime / (24*60*60*1000));
			//머물 날짜 계산2
		 if(document.querySelector("input[name='uid']").value=="null"){
			alert("로그인으로 진행해주세요!");
			document.querySelector("input[name='uname']").focus();
			return false;
		}else if(document.querySelector("input[name='uname']").value==""){
			alert("이름을 입력해주세요");
			document.querySelector("input[name='uname']").focus();
			return false;
		}else if(document.querySelector("input[name='uroomnumber']").value==""){
			alert("방번호를 입력해주세요!");
			document.querySelector("input[name='uroomnumber']").focus();
			return false;
		}else if(document.getElementById("demo").innerText !="예약가능"){
			alert("예약날짜를 변경해주세요2222!");
			document.frm.flag.focus();
			return false;
		}else {
			//보낼 데이터
			let pid = document.querySelector("input[name='uid']").value;
			let pname = document.querySelector("input[name='uname']").value;
			let proomnumber = document.querySelector("input[name='uroomnumber']").value;
			let pcheckin = checkinYear + "-" + checkinMonth + "-" + checkinDay;
			let pcheckout = checkoutYear + "-" + checkoutMonth + "-" + checkoutDay;
			let pstayday = stayDay;
			let data = "uid=" + pid + "&uname=" + pname + "&uroomnumber=" + proomnumber +
						"&ucheckin=" + pcheckin + "&ucheckout=" + pcheckout + "&ustayday=" + pstayday;
			
		    xhttp.send(data);
			setTimeout(alert("등록 완료"), 1000);
			return true;
		}
	}
	
	function reservationCheck(){
		if(document.querySelector("input[name='uroomnumber']").value==""){
			alert("방번호를 입력해주세요!");
			document.frm.id.focus();
			return;
		}
		const checkin = new Date(document.querySelector("#checkin").value);
		 var checkinYear = checkin.getFullYear();
		 var checkinMonth = checkin.getMonth() + 1;
		 var checkinDay = checkin.getDate();
		 var checkinymd = checkinYear + "-" + checkinMonth + "-" + checkinDay +"-";
		 
		 const checkout = new Date(document.querySelector("#checkout").value);
		 var checkoutYear = checkout.getFullYear();
		 var checkoutMonth = checkout.getMonth() + 1;
		 var checkoutDay = checkout.getDate();
		 var checkoutymd = checkoutYear + "-" + checkoutMonth + "-" + checkoutDay +"-";
		 
		let roomnumber = document.querySelector("input[name='uroomnumber']").value;
		let pcheckin = checkinYear + "-" + checkinMonth + "-" + checkinDay;
		let pcheckout = checkoutYear + "-" + checkoutMonth + "-" + checkoutDay;
		
		let url = "roomcheckServlet.do?uroomnumber=" + roomnumber + "&ucheckin=" + pcheckin + "&ucheckout=" + pcheckout;
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