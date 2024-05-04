<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>use_parameter_process</title>
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
<strong><%= request.getMethod() %> 방식의 요청</strong>
<div>
	<%
	// request 객체 사용하여 encoding
	// request 내장객체가 쓰여지기 전에 사용해야 한다. encoding이 두 번 되면 ?로 나온다.
	// GET 방식에는 적용되지 않는다.
	request.setCharacterEncoding("UTF-8");
	
	// request 내장객체를 사용하여 Form Control의 입력 값 받기(Web Parameter의 값 받기)
	
	// name 속성의 값이 유일한 경우 request.getParameter로 받는다.
	String text = request.getParameter("text"); // <input type = "text" name = "text">
	String pass = request.getParameter("pass");	// <input type = "password" name = "pass">
	String hid = request.getParameter("hid"); // <input type = "hidden" name = "hid">
	String chk = request.getParameter("chk"); // <input type = "checkbox" name = "chk"> : checked된 상태에서만 값이 넘어온다.
	String loc = request.getParameter("loc"); // <input type = "select" name = "loc">
	String ta = request.getParameter("ta"); // <textarea name = "ta">
	
	// String class로 encoding
	String str = new String(text.getBytes("8859_1"), "UTF-8");
	
	// net package의 URLDecoder, URLEncoder 사용 
	String str2 = URLDecoder.decode(URLEncoder.encode(hid, "8859_1"), "UTF-8");
	
	// name 속성의 값이 같으면 배열로 처리되고, request.getParameterValues("이름")으로 받는다.
	String[] names = request.getParameterValues("name"); // <input type = "text" name = "name">
	String[] hobbys = request.getParameterValues("hobby"); // <input type = "checkbox" name = "hobby">
	%>
	
	<ul>
		<li><strong>text : </strong><%= text %></li>
		<li><strong>password : </strong><%= pass %></li>
		<li><strong>hidden : </strong><%= hid %></li>
		<li><strong>check : </strong><%= chk %></li>
		<li><strong>select : </strong><%= loc %></li>
		<li><strong>textarea : </strong><%= ta %></li>
		
		<li><strong>이름 : </strong>
			<% for(String name : names) { %>
			<%= name %>
			<% } // end for %>
		</li>
		
		<li><strong>취미 : </strong>
			<% 
			// try {
			if(hobbys != null) {
				for(String hobby : hobbys) { 
				// checkbox는 check하지 않으면 parameter로 생성되지 않아 배열에 null이 들어간다. 
				// 반복하면 배열명.length를 사용하는 코드에서 NullPointException이 발생하게 된다. %>
				<%= hobby %>
				<% } // end for 
			// } catch(NullPointException npe) {
			// out.println("선택된 취미 없음");
			// } // end catch
			} else {
				out.println("취미는 하나 정도 있는게 좋지 않을까요?");
			} // end else
			%>
		</li>
	</ul>
	<a href = "javascript:history.back()">뒤로</a>
</div>
</body>
</html>