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

<h3>입력하신 아이디와 이름을 확인합니다.</h3>
<table border="1" style="width:300px; border-collapse:collapse; ">
	<tr>
		<th>아이디</th>
		<td><%=p1.getId() %> (비밀번호: <%=p1.getPwd() %> )   </td>
	</tr>
	<tr>
		<th>이름</th>
		<td><%=p1.getName() %></td>
	</tr>
</table>

</body>
</html>