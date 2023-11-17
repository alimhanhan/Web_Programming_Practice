<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<%request.setCharacterEncoding("EUC-KR"); %>
<html>
<head>
<meta charset="UTF-8">
<title>inputTag Process</title>
</head>
<body>

<table>
<tr>
<td>아이디</td>
<td><%=request.getParameter("id") %></td> <!-- 표현식에는 세미콜론(;) X -->
</tr>

<tr>
<td>비밀 번호</td>
<td><%=request.getParameter("passwd") %></td>
</tr>



</table>

</body>
</html>