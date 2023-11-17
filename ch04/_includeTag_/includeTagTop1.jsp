<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String name = request.getParameter("name"); 
String name2 = request.getParameter("name2");
%>
include ActionTag의 Top입니다.
<p/>
<b>
name : <%=name %>
name2 : <%=name2 %> </b>
<hr/>