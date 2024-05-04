<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>use_parameter_form</title>
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
	#wrap{
		width: 1000px;
		height: 600px;
		margin: 0px auto;
	}
	
	#divGet{
		width: 498px;
		height: 598px;
		border: 1px solid #333;
		float: left;
	}
	
	#divPost{
		width: 498px;
		height: 598px;
		border: 1px solid #ff0000;
		float: right;
	}
</style>
<script type = "text/javascript">
	$(function() {
		$("#getBtn").click(function() {
			$("#formGet").submit();
		}); // click

		$("#postBtn").click(function() {
			$("#formPost").submit();
		}); // click
	}); // ready
</script>
</head>
<body>
<div id = "wrap">
	<div id = "divGet">
		<h3>GET방식 요청</h3>
		<strong>name 속성에 이름이 유일한 객체의 처리</strong>
		<form action = "use_parameter_form_process.jsp" method = "get" id = "formGet">
		<label>text : </label>
		<input type = "text" name = "text" value = "GET 연습"><br>
		<label>password : </label>
		<input type = "password" name = "pass" value = "password"><br>
		<label>hidden : </label>
		<input type = "hidden" name = "hid" value = "숨겨진 데이터"><br>
		<label>checkbox : </label>
		<input type = "checkbox" name = "chk" value = "save">저장<br>
		<label>select : </label>
		<select name = "loc">
			<option value = "서울시">서울</option>
			<option value = "경기도">경기</option>
			<option value = "충청남북도" selected = "selected">충청</option>
			<option value = "경상남북도">경상</option>
			<option value = "전라남북도">전라</option>
			<option value = "강원도">강원</option>
			<option value = "제주도">제주</option>
		</select><br>
		<label>textarea : </labeL>
		<textarea style = "width: 300px; height: 100px;" name = "ta">GET 연습</textarea><br>
		
		<strong>name 속성에 이름이 여러 개인 객체의 처리</strong><br>
		<label>이름 : </label>
		<input type = "text" name = "name"><br>
		<label>이름 : </label>
		<input type = "text" name = "name"><br>
		<label>이름 : </label>
		<input type = "text" name = "name"><br>
		<label>취미 : </label>
		<input type = "checkbox" name = "hobby" value = "등산">등산
		<input type = "checkbox" name = "hobby" value = "낚시">낚시
		<input type = "checkbox" name = "hobby" value = "독서">독서
		<input type = "checkbox" name = "hobby" value = "운동">운동<br>
		<input type = "button" value = "GET방식 전송" class = "btn btn-info btn-sm" id = "getBtn">
		</form>
	</div>
	
	<div id = "divPost">
		<h3>POST방식 요청</h3>
		<strong>name 속성에 이름이 유일한 객체의 처리</strong>
		<form action = "use_parameter_form_process.jsp" method = "post" id = "formPost">
		<label>text : </label>
		<input type = "text" name = "text" value = "POST 연습"><br>
		<label>password : </label>
		<input type = "password" name = "pass" value = "password"><br>
		<label>hidden : </label>
		<input type = "hidden" name = "hid" value = "숨겨진 데이터"><br>
		<label>checkbox : </label>
		<input type = "checkbox" name = "chk" value = "save">저장<br>
		<label>select : </label>
		<select name = "loc">
			<option value = "서울시">서울</option>
			<option value = "경기도">경기</option>
			<option value = "충청남북도" selected = "selected">충청</option>
			<option value = "경상남북도">경상</option>
			<option value = "전라남북도">전라</option>
			<option value = "강원도">강원</option>
			<option value = "제주도">제주</option>
		</select><br>
		<label>textarea : </labeL>
		<textarea style = "width: 300px; height: 100px;" name = "ta">POST 연습</textarea><br>
		
		<strong>name 속성에 이름이 여러 개인 객체의 처리</strong><br>
		<label>이름 : </label>
		<input type = "text" name = "name"><br>
		<label>이름 : </label>
		<input type = "text" name = "name"><br>
		<label>이름 : </label>
		<input type = "text" name = "name"><br>
		<label>취미 : </label>
		<input type = "checkbox" name = "hobby" value = "등산">등산
		<input type = "checkbox" name = "hobby" value = "낚시">낚시
		<input type = "checkbox" name = "hobby" value = "독서">독서
		<input type = "checkbox" name = "hobby" value = "운동">운동<br>
		<input type = "button" value = "POST방식 전송" class = "btn btn-info btn-sm" id = "postBtn">
		</form>
	</div>
</div>
</body>
</html>