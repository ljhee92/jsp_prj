<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "세션의 값 삭제" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>use_session_c</title>
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
	session.removeAttribute("age"); // 세션은 살아 있고 세션 안의 값만 삭제
	session.removeAttribute("ipAddr");
	session.removeAttribute("name");
	
	session.invalidate(); // 세션 자체 무효화 : 브라우저에 할당된 세션 자체가 사라진다.
	
	log("====================세션 값 삭제 후====================");
	// log("이름: " + (String)session.getAttribute("name"));
	// log("ip: " + (String)session.getAttribute("ipAddr")); // invalidate 시 사용 불가
	%>
	세션 값 삭제 완료<br>
	<a href = "use_session_a.jsp">세션 읽기</a>
</div>
</body>
</html>