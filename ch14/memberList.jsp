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
    <title>회원 목록</title>
    <link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <h2>회원 목록</h2>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>이름</th>
            <th>성별</th>
            <th>생년월일</th>
            <th>Email</th>
            <th>주소</th>
            <th>취미</th>
            <th>직업</th>
        </tr>
        <% for (MemberBean member : memberList) { %>
            <tr>
                <td><%= member.getId() %></td>
                <td><%= member.getName() %></td>
                <td><%= member.getGender().equals("1") ? "남" : "여" %></td>
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
                
