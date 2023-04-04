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
</style>
</head>
<body>
<%@ include file="adMenu.jsp" %>
	<div class="menubox">
        <br><div id="menuName"><li>관리자 페이지</li><br></div>
        <div id="hrLine"><hr></div>
        <br>
    </div>
<%@ include file="footer.jsp" %>
</body>
</html>