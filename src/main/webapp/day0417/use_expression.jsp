<%@page import="day0417.DataVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "표현식의 사용" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>use_expression</title>
<link rel = "icon" href = "localhost/jsp_prj/common/favicon.ico">
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
	th, td{
		border: 1px solid #333;
		width: 100px;
		text-align: center;
		cursor: pointer;
	}
	td:hover{
		background-color: #dfdfdf;
	}
	.table{
		border: 1px solid #333;
		width: 300px;
		vertical-align: middle;
	}
</style>
<script type = "text/javascript">
	$(function() {
		$("#select").change(function(){
			let select = $("#select").val();
			
			if(select.selectedInedx != 0) { // ----선택----이 아니라면
				if(confirm(select + "로 이동하시겠습니까?")) {
					window.open(select);
				} // end if
			} // end if
		}); // change
	}); // ready
	
	function print(i, j, result) {
		alert(i + "*" + j + "=" + result); // 웹 서버에 계산 후 결과 출력
	} // print
	
	function print2(i, j) {
		alert(i + "*" + j + "=" + (i*j)); // 웹 서버와 웹 클라이언트가 나눠서 일을 수행
	} // print2
	
	function goUrl(url) {
		window.open(url);
	} // goUrl
</script>
</head>
<body>
<div>
	<%
	String msg = "오늘은 피곤한 수요일";
	String msg2 = "피곤함 오지는 수요일";
	%>
	<%-- <%= msg, msg2 %> 표현식은 out.print()로 코드가 변환되며 
		JspWriter 클래스에는 print() method 매개변수가 하나로만 Overload 되어있다. --%>
	<%= msg %><br><%= msg2 %>
	
	<table>
		<% 
		for(int i = 1; i < 10; i++) {
		%>
		<tr>
			<%-- <td onclick = "alert('<%= 2*i %>')"> 2 * <%= i %></td> --%>
			<td onclick = "print(2, <%= i %>, <%= 2*i %>)">2 * <%= i %></td>
			<td onclick = "print2(2, <%= i %>)">2 * <%= i %></td>
		</tr>
		<%
		} // end for
		%>
	</table>
	
	<%
		DataVO[] data = new DataVO[5];
		data[0] = new DataVO("홍길동", "http://danawa.com", "danawa.png");
		data[1] = new DataVO("김개똥", "http://youtube.com", "youtube.png");
		data[2] = new DataVO("김아무", "http://google.com", "google.png");
		data[3] = new DataVO("고길동", "http://coupang.com", "coupang.png");
		data[4] = new DataVO("김누구", "http://sist.co.kr", "sist.png");
	%>
	<select id = "select">
		<option>----선택----</option>
		<% for(int i = 0; i < data.length; i++) { %>
		<option value = '<%= data[i].getUrl() %>'><%= data[i].getName() %></option>
		<% } // end for %>
	</select>
	
	<table class = "table">
		<tr>
			<th>이름</th>
			<th>이미지</th>
		</tr>
		
		<% for(int i = 0; i < data.length; i++) { %>
		<tr>
			<td><%= data[i].getName() %></td>
			<td onclick = "goUrl('<%= data[i].getUrl() %>')">
				<img src = "http://localhost/jsp_prj/day0417/images/<%= data[i].getImg() %>">
			</td>
			
			<%-- <td><a href = "<% data[i].getUrl() %>"
				<img src = "http://localhost/jsp_prj/day0417/images/<%= data[i].getImg() %>"></a>
				</td> --%>
		</tr>
		<% } // end for %>
	</table>
	
	<table>
		<% for(int i = 1; i < 10; i++) { %>
		<tr>
			<% for(int j = 2; j < 10; j++) { %>
				<td><%= j %> * <%= i %> = <%= j*i %></td>
			<% } // end for %>
		</tr>		
		<% } // end for %>
	</table>
</div>
</body>
</html>