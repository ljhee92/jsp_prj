<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>call</title>
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
	.get{
		font-size: 20px;
		color: #0000ff;
	}
	
	.post{
		font-size: 30px;
		color: #ff0000;
	}
</style>
<script type = "text/javascript">
	$(function() {
		$("#btn").click(function() {
			history.back();
		}); // click
	}); // ready
</script>
</head>
<body>
<div>
	<%
	// _jspService() method 안으로 코드가 생성된다.
	String method = request.getMethod(); // GET 방식으로 요청되면 GET 반환, POST 방식으로 요청되면 POST 반환
	%>
	요청방식은 <span class = "<%= method.toLowerCase() %>"><%= method %></span>방식입니다.<br>
	<input type = "button" value = "뒤로" class = "btn btn-info btn-sm" id = "btn">
</div>
</body>
</html>