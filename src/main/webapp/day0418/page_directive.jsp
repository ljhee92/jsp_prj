<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "페이지 지시자의 사용"
    session = "false"
    isThreadSafe = "true"
    buffer = "8kb" 
    autoFlush = "true" 
    errorPage = "page_directive2.jsp"
    trimDirectiveWhitespaces = "true"
    isELIgnored = "true" %>
	<%
	if(new Random().nextBoolean()) {
		throw new Exception("예외가 발생된 상황");
	} // end if
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_directive</title>
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
	정상적인 상황<br>
	<a href = "page_directive.jsp?id=kim">요청</a>
	<div>
	클릭했을 때 전달된 값 <strong>${ param.id }</strong>
	</div>
</div>
</body>
</html>