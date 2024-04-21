<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "scriptlet의 사용" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>use_scriptlet</title>
<link rel = "icon" href = "http://localhost/jsp_prj/common/favicon.ico">
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<!-- sist css 시작 -->
<link rel="stylesheet" href="http://localhost/jsp_prj/common/css/basic.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://localhost/jsp_prj/common/css/board.css" type="text/css" media="all" />
<!-- sist css 끝 -->
<!--jQuery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuery CDN 끝-->
<style type = "text/css">
	input{
		width: 300px;
	}
</style>
<script type = "text/javascript">
	$(function() {

	}); // ready
</script>
</head>
<body>
<div>
	<% // scriptlet : method 내의 자바코드 정의할 때 사용
 
	// 지역변수
 	int i = 0; 
	%>
	지역변수 i = <%= i %><br>
	
	<%
	// 연산 
	int j = i + 1;
	++j;
	j++;
	%>
	연산 j = <%= j %><br>
	
	<%
	// 제어
	String style = "";
	for(int k = 1; k < 7; k++) {
		if(k == 3) {
			style = " style = 'background-color: #ff0000'";
		} else {
			style = "";
		} // end else
	%>
	<h<%= k %><%= style %>>안녕하세요</h<%= k %>>
	<%
	}
	%>
	
	<%
	// 객체 생성 및 method 호출
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd EEEE hh:mm:ss");
	String date = sdf.format(new Date());
	%>
	<label>오늘의 날짜 정보: </label>
	<input type = "text" value = "<%= date %>">
</div>
</body>
</html>