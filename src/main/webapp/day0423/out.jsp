<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "out 내장객체의 사용" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out</title>
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
	
</style>
<script type = "text/javascript">
	$(function() {

	}); // ready
</script>
</head>
<body>
<div>
	<%
	String msg = "잘생긴 홍길동 ^o^b";
	%>
	<strong><%= msg %></strong><br>
	
	<%
	String msg2 = "오늘은 화창한 화요일";
	out.println(msg2);
	%>
	
	<br>
	<% for(int i = 1; i < 32; i++) { %>
	<%= i %>
	<% } // end for %>
	<br>
	<% for(int i = 1; i < 32; i++) {
		out.println(i);
		} // end for
	out.println("<br>");
	
	String link = "http://sist.co.kr";
	String linkName = "쌍용교육센터";
	
	out.println("<a href = '");
	out.println(link);
	out.println("'>");
	out.println(linkName);
	out.println("</a><br>");
	%>
	<br>
	<a href = "<%= link %>"><%= linkName %></a>
</div>
</body>
</html>