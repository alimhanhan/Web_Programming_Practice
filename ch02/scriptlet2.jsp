<%@ page contentType="text/html;charset=EUC-KR"%>
<h1>Scriptlet Example2</h1>
<%
   float f = 2.3f;
   int i = Math.round(f);
   java.util.Date date = new java.util.Date();
%>

<%
	String name = "Korea";
	out.println("<font color='blue'> �̸�1�� </font>" + name + "�Դϴ�.<br>"); //"blue" ó�� ū����ǥ ���� ���� �߻�
%>
�̸�2�� <font color="red"> <%=name %> </font> �Դϴ�. <br>

�Ǽ� f�� �ݿø�����? <%=i%><p/>
������ ��¥�� �ð���? <%=date.toString()%>