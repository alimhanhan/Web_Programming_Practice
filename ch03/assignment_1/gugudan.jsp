<!-- 2022111354 한아림 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>구구단 출력</title>
	</head>
	
	<body>
		<%
			String num = request.getParameter("num");
			int inputNum = Integer.parseInt(num);  //String을 int형으로 변환
		%>

		<!-- 그대로 출력 -->
		<%
			if(inputNum > 9)  //입력한 수가 10 이상일 때
			{
				out.println("9이하의 수를 입력해주시기 바랍니다.");
			}
			else if(inputNum < 1)  //입력한 수가 1보다 작을 때
			{
				out.println("1이상의 수를 입력해주시기 바랍니다.");
			}
			else  //1~9 사이의 수를 정상적으로 입력한 경우
			{
				for(int i=1;i<10;i++)
				{
					out.println(num + " x " + i + " = " + (i*inputNum) + "<br>");
				}
			}
		%>

		<p><p><p><p>

		<TABLE border=1 width=85 height=120>
			<% if(inputNum >= 1 && inputNum <=9)
				{
					for(int k = 1; k < 10; k++) { %>
			<TR>
				<td><%= num %> x <%= k %> = <%= (k*inputNum) %><br></td>
			</TR>
			<% }} else { %>
				<TR>
				<td>다른 수를 골라주세요^~^<br></td>
				</TR>
			<% } %>
		</TABLE>

		<p>
		<a href="javascript:history.go(-1)">이전 페이지</a>
	</body>
</html>