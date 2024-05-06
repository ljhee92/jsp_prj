<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "세션의 값 읽기" %>
<%-- <%@ page session="false" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>use_session_a</title>
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
	<%-- <%
	HttpSession session = request.getSession();
	// session = "false"인 상태에서만 사용
	// 보통 seesion = "true" 이므로 잘 사용하지 않는다.
	%>
	<%= session %> --%>
	
	<%
	// 세션 값 얻기
	String ip = (String)session.getAttribute("ipAddr");
	String name = (String)session.getAttribute("name");
	// int age = ((Integer)session.getAttribute("age")).intValue();
	Integer obj = (Integer)session.getAttribute("age");
	
	int age = 0;
	
	if(obj != null) {
		age = obj.intValue(); // autoBoxing 지원으로 가능
	} // end else
	%>
	
	<% if(name == null) { %>
		세션에 값이 없습니다.<br>
		<form action = "use_session_b.jsp">
			<label>이름 </label>
			<input type = "text" name = "name"><br>
			<label>나이 </label>
			<input type = "text" name = "age"><br>
			<input type = "submit" value = "세션에 값 설정"><br>
		</form>
	<% } else { %>
		<%= ip %> 컴퓨터에서 접속하셨습니다.<br>
		세션에서 꺼내온 값 : <%= name %>, <%= age %><br>
		<a href = "use_session_c.jsp">세션의 값 삭제</a>
		<a href = "temp_a.jsp">로그인 후 작업A(로그인 필수)</a>
		<a href = "temp_b.jsp">로그인 후 작업B(로그인을 하지 않아도 사용 가능)</a>
		<a href = "temp_c.jsp">로그인 후 작업C(로그인 필수)</a>
	<% } // end else %>
</div>
</body>
</html>