<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "세션이 필요한 이유" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>why_session_a</title>
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
		$("#btn").click(function(){
			let name = $("#name").val();
			
			if(name.trim() == "") {
				alert("이름은 필수입력사항입니다.");
				$("#name").val("");
				$("#name").focus();
				return;
			} // end if
			
			$("#frm").submit();			
		}); // click
	}); // ready
</script>
</head>
<body>
<div>
	<form name = "frm" id = "frm" action = "why_session_b.jsp">
		<label>이름</label>
		<input type = "text" name = "name" id = "name">
		<input type ="button" value = "입력" class = "btn btn-warning btn-sm" id = "btn">
	</form>
</div>
</body>
</html>