<%@page contentType="text/html;charset=EUC-KR"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>
<h1>forwardTag1_2.jsp</h1>
����� ���̵��<b><%=id%></b>�̰�<p/>
�н������ <b><%=pwd%></b> �Դϴ�.
<!-- Line 8���� password�� �ƴ϶� pwd -->