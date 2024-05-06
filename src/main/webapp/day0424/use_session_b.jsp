<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "세션의 값 설정" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>use_session_b</title>
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
	String ip = request.getRemoteAddr();
	String paramName = request.getParameter("name");
	String paramAge = request.getParameter("age");
	
	Integer age = null;
	if(!paramAge.equals("")) {
		age = Integer.valueOf(paramAge);
	} // end if
	
	// 세션의 생존시간 설정 : session은 WAS에서 하나이기 때문에 어디에서든 생존시간을 설정하면
	// 모든 페이지에 설정된다. 초*분*시*일
	session.setMaxInactiveInterval(10);
	
	// 세션에 값 설정
	session.setAttribute("ipAddr", ip);
	session.setAttribute("name", paramName);
	session.setAttribute("age", age);
	%>
	
	세션에 값이 설정되었습니다.<br>
	<a href = "use_session_a.jsp">세션 읽기</a>
</div>
</body>
</html>