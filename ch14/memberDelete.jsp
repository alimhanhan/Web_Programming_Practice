<%@ page import="ch14.MemberMgr" %>
<%@ page import="ch14.MemberBean" %>
<%@ page import="java.util.Vector" %>
<%@ page import="ch14.ZipcodeBean" %>
<%@ page import="ch14.DBConnectionMgr" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    // 세션 확인
    HttpSession session11 = request.getSession();
    String id = (String) session11.getAttribute("idKey");

    if (id == null) {
        // 세션이 없을 경우 로그인 페이지로 이동
        response.sendRedirect("login.jsp");
        return;
    }

    String pwd = request.getParameter("pwd");

    MemberMgr memberMgr = new MemberMgr();
    MemberBean member = memberMgr.getMember(id);

    if (memberMgr.deleteMember(id, pwd)) {
        if (session11 != null) {
            session11.invalidate();
        }

        // Redirect the frames
        response.getWriter().println("<script type=\"text/javascript\">");
        response.getWriter().println("parent.left.location.href='login.jsp';");
        response.getWriter().println("parent.content.location.href='contentWin.jsp';");
        response.getWriter().println("</script>");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 탈퇴</title>
</head>
<body>
    <h1>회원 탈퇴</h1>
    <form method="post" action="memberDelete.jsp">
        <p>비밀번호를 입력하세요:</p>
        <input type="password" name="pwd" required>
        <button type="submit">탈퇴</button>
    </form>
    <% if (pwd != null && !member.getPwd().equals(pwd)) { %>
        <p style="color: red;">비밀번호가 일치하지 않습니다.</p>
    <% } %>
</body>
</html>
