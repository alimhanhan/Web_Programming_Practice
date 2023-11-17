<%@ page contentType="text/html; charset=EUC-KR" %>
<%
    request.setCharacterEncoding("EUC-KR");
    String id = (String) session.getAttribute("idKey");
    String name = (String) session.getAttribute("name");
%>
<html>
<head>
    <title>�α���</title>
    <link href="style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        function loginCheck() {
            if (document.loginFrm.id.value == "") {
                alert("���̵� �Է��� �ּ���.");
                document.loginFrm.id.focus();
                return;
            }
            if (document.loginFrm.pwd.value == "") {
                alert("��й�ȣ�� �Է��� �ּ���.");
                document.loginFrm.pwd.focus();
                return;
            }
            document.loginFrm.submit();
        }
    </script>
</head>
<body bgcolor="#ffffcc">
<div align="center"><br/><br/>
    <% if (id != null) { %>
    <table width="300">
        <tr>
            <td>
                <b><%=name%></b>�� ȯ���մϴ�. <a href="logout.jsp">[�α׾ƿ�]</a>
                <br>
                <p>���ѵ� ����� ����� �� �ֽ��ϴ�.</p>
            </td>
        </tr>
        <tr>
            <td>
                <a href="memberList.jsp" target="content">�� ȸ�� ��Ϻ���</a><br>
                <a href="memberUpdate.jsp" target="content">�� ȸ�� ����</a><br>
                <a href="memberDelete.jsp" target="content">�� ȸ�� Ż��</a>
            </td>
        </tr>
    </table>
    <% } else { %>
    <form name="loginFrm" method="post" action="loginProc.jsp">
        <table>
            <tr>
                <td align="center" colspan="2"><h4>�α���</h4></td>
            </tr>
            <tr>
                <td>�� �� ��</td>
                <td><input name="id"></td>
            </tr>
            <tr>
                <td>��й�ȣ</td>
                <td><input type="password" name="pwd"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <div align="right">
                        <input type="button" value="�α���" onclick="loginCheck()">&nbsp;
                        <a href="member.jsp" target="content"><input type="button" value="ȸ������"></a>
                    </div>
                </td>
            </tr>
        </table>
    </form>
    <% } %>
</div>
</body>
</html>
