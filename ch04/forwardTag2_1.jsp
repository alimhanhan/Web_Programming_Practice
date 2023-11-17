<%@page contentType="text/html;charset=EUC-KR"%>
<%
 	String name = request.getParameter("name");
	//String nn = "회원";
 	String bloodType = request.getParameter("bloodType");
 %>
 <h1>Forward Tag Example2</h1>
<jsp:forward page='<%=bloodType + ".jsp"%>'>
 	<jsp:param name="name" value='<%=name+"회원"%>'/>
</jsp:forward>