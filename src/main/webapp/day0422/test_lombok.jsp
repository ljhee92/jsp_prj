<%@page import="day0422.TestVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "롬복 연습" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test_lombok</title>
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
	TestVO test = new TestVO();
	test.setName("홍길동");
	test.setAge(25);
	
	TestVO test2 = new TestVO("김아무", 26);
	%>
	
	<%= test.getName() %>(<%= test.getAge() %>)님 안녕하세요?<br>
	<%= test.toString() %><br>
	
	<%= test2.getName() %>(<%= test2.getAge() %>)님 안녕하세요?<br>
	<%= test2.toString() %><br>
</div>
</body>
</html>