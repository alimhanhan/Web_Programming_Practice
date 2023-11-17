<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); 
    String name="Korea Football";%>
<html>
<body>
<h1>Include Tag Example1</h1>
<jsp:include page="includeTagTop1.jsp">
<jsp:param name="name2" value="korea"/>
</jsp:include>
include ActionTag의 Body입니다.
</body>
</html>