 <%@ page contentType="text/html;charset=EUC-KR"%>
 <h1>Expression Example1</h1>
<%!
	String name[] = {"Java","JSP","Android","Struts"};
%>

<table border="1" width="200">
	<tr>
		<td>No</td>
		<td>PL</td>
	</tr>

<% for (int i=0;i<name.length;i++){%>
	<%if(i%2==0) {%>
		<tr bgcolor="red">
			<td>
				<font color="white"><%=i+1%></font>
			</td>
			<td>
				<font color="white"><%=name[i]%></font>
			</td>
		</tr>
	<%}else{ %>
		<tr bgcolor="yellow">
			<td><%=i+1%></td>
			<td><%=name[i]%></td>
		</tr>
	<%} %>
<%}%>
</table>