<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declaration</title>
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
	#nameTitle{
		width: 120px;
	}
	
	#scoreTitle{
		width: 500px;
	}
</style>
<script type = "text/javascript">
	$(function() {
		
	}); // ready
</script>
</head>
<body>
<div>
	<%!
	int i; // instance variable
	%>
	인스턴스 변수 : <strong><%= i %></strong><br>
	
	<%!
	public String formatDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(new Date());
		return date;
	} // formatDate
	%>
	
	<%!
	public String createRadio(int cnt, String name, int nameNum, int checkNum) {
		StringBuilder radio = new StringBuilder();
		
		if(cnt < 1) {
			cnt = 2;
		} // end if
		
		if(checkNum < 0) {
			checkNum = 0;
		} // end if
		
		if(checkNum > cnt) {
			checkNum = cnt;
		} // end if
		
		for(int i = 0; i <= cnt; i++) {
			radio.append("<input type = 'radio' name = '")
			.append(name).append(nameNum).append("'")
			.append(" value = '").append(i).append("'")
			.append(i==checkNum ? " checked = 'checked'":"")
			.append(">").append(i).append("&nbsp;\n");
		}
		
		return radio.toString();
	} // createRadio
	%>
	
	<%
	// scriptlet은 JSP가 Java Source Code로 변환될 때 _javaService method 안으로
	// 코드가 생성되므로 method를 정의할 수 없다.
	// public void test() {
	// }
	String[] names = {"홍길동", "김개똥", "김아무", "고길동", "김수현"};
	%>
	
	<input type = "text" value = "<%= formatDate() %>">
</div>

<div>
	<h2><%= formatDate() %></h2>
</div>

<div>
	<table class = "table" style = "width: 620px;">
		<tr>
			<th id = "nameTitle">이름</th>
			<th id = "scoreTitle">점수</th>
		</tr>
		<% for(int i = 0; i < names.length; i++) { %>
		<tr>
			<td><%= names[i] %></td>
			<td>
				<%-- <% for(int j = 0; j < 11; j ++) { %>
					<input type = "radio" value = "<%= j %>" name = "score<%= i %>"<%= j==0? "checked = 'checked'":"" %>> <%= j %>&nbsp;
				<%} // end for %> --%>
				<%= createRadio(10, "score_", i, 1) %>
			</td>
		</tr>
		<% } // end for %>
	</table>
</div>
</body>
</html>