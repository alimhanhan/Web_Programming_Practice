<%@page contentType="text/html;charset=EUC-KR"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>
<h1>forwardTag1_2.jsp</h1>
당신의 아이디는<b><%=id%></b>이고<p/>
패스워드는 <b><%=pwd%></b> 입니다.
<!-- Line 8에서 password가 아니라 pwd -->