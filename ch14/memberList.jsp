<%@ page import="ch14.MemberMgr" %>
<%@ page import="ch14.MemberBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
    MemberMgr memberMgr = new MemberMgr();
    Vector<MemberBean> memberList = memberMgr.memberList();
%>
<html>
<head>
    <title>ȸ�� ���</title>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <h2>ȸ�� ���</h2>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>�̸�</th>
            <th>����</th>
            <th>�������</th>
            <th>Email</th>
            <th>�ּ�</th>
            <th>���</th>
            <th>����</th>
        </tr>
        <% for (MemberBean member : memberList) { %>
            <tr>
                <td><%= member.getId() %></td>
                <td><%= member.getName() %></td>
                <td><%= member.getGender().equals("1") ? "��" : "��" %></td>
                <td><%= member.getBirthday() %></td>
                <td><%= member.getEmail() %></td>
                <td><%= member.getAddress() %></td>
                <td>
                    <% for (String hobby : member.getHobby()) { %>
                        <%= hobby %><br>
                    <% } %>
                </td>
                <td><%= member.getJob() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
                
