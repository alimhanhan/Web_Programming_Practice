<%@ page contentType="text/html;charset=EUC-KR"%>
<h1>Scriptlet Example2</h1>
<%
   float f = 2.3f;
   int i = Math.round(f);
   java.util.Date date = new java.util.Date();
%>

<%
	String name = "Korea";
	out.println("<font color='blue'> 이름1은 </font>" + name + "입니다.<br>"); //"blue" 처럼 큰따옴표 쓰면 에러 발생
%>
이름2는 <font color="red"> <%=name %> </font> 입니다. <br>

실수 f의 반올림값은? <%=i%><p/>
현재의 날짜와 시간은? <%=date.toString()%>