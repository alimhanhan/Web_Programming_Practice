<!-- 2022111354 �ѾƸ� -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>������ ���</title>
	</head>
	
	<body>
		<%
			String num = request.getParameter("num");
			int inputNum = Integer.parseInt(num);  //String�� int������ ��ȯ
		%>

		<!-- �״�� ��� -->
		<%
			if(inputNum > 9)  //�Է��� ���� 10 �̻��� ��
			{
				out.println("9������ ���� �Է����ֽñ� �ٶ��ϴ�.");
			}
			else if(inputNum < 1)  //�Է��� ���� 1���� ���� ��
			{
				out.println("1�̻��� ���� �Է����ֽñ� �ٶ��ϴ�.");
			}
			else  //1~9 ������ ���� ���������� �Է��� ���
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
				<td>�ٸ� ���� ����ּ���^~^<br></td>
				</TR>
			<% } %>
		</TABLE>

		<p>
		<a href="javascript:history.go(-1)">���� ������</a>
	</body>
</html>