<%@page contentType="text/html;charset=EUC-KR"%>
<%
 	String name = request.getParameter("name");
	//String nn = "ȸ��";
 	String bloodType = request.getParameter("bloodType");
 %>
 <h1>Forward Tag Example2</h1>
<jsp:forward page='<%=bloodType + ".jsp"%>'>
 	<jsp:param name="name" value='<%=name+"ȸ��"%>'/>
</jsp:forward>