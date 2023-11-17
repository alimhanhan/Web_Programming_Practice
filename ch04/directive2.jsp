<%@page contentType="text/html;charset=EUC-KR" 
   import="java.util.Date"
   session="true" 
   buffer="16kb"
   autoFlush="true" 
   isThreadSafe="true"
%>
<h1>Directive Example2</h1>
<%
	Date date = new Date();
%>
현재의 날짜와 시간은?<p/>
<%=date.toLocaleString()%>
<p>
<%=date.toString()%>