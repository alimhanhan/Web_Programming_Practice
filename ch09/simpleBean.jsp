<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="myBean" class="ch09.SimpleBean"/>
<jsp:setProperty name="myBean" property="message" value="���� ���� ��������!" />
<html>
<body>
<h1>������ �� ���α׷���</h1>
<br/>
Message1: <jsp:getProperty name="myBean" property="message" /><br>
Message2: <%=myBean.getMessage() %>
</body>
</html>