<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JavaBeans</title>
</head>
<body>

<jsp:useBean id="p1" class="ch09.Person" />

<% request.setCharacterEncoding("euc-kr");

   //String id = request.getParameter("id");
   //String name = request.getParameter("name");
%>

<jsp:setProperty property="*" name="p1"/>

<h3>�Է��Ͻ� ���̵�� �̸��� Ȯ���մϴ�.</h3>
<table border="1" style="width:300px; border-collapse:collapse; ">
	<tr>
		<th>���̵�</th>
		<td><%=p1.getId() %> (��й�ȣ: <%=p1.getPwd() %> )   </td>
	</tr>
	<tr>
		<th>�̸�</th>
		<td><%=p1.getName() %></td>
	</tr>
</table>

</body>
</html>