<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "include directive" %>
	<%
	// 여러 JSP에서 사용하게 될 공통 코드를 정의 : 로그인 후 session 정보들
	String msg = "오늘은 미세먼지 가득한 목요일";
	%>
	안쪽 JSP : <%= msg %>
	
	<!-- 공통코드를 가지는 JSP에서는 어떤 JSP에 include 되어서 사용될지 알 수 없기 때문에
	외부 JSP의 변수를 사용하지 않는다. -->
	<%-- 오늘은 <%= day %>일 --%>