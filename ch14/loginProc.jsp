<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="mMgr" class="ch14.MemberMgr"/>
<%
    request.setCharacterEncoding("EUC-KR");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String name = request.getParameter("name");
    String url = "login.jsp";
    String msg = "�α��ο� ���� �Ͽ����ϴ�.";
    
    boolean result = mMgr.loginMember(id, pwd);
    if (result) {
        session.setAttribute("idKey", id);
        session.setAttribute("name", mMgr.getMember(id).getName());
        msg = "�α��ο� ���� �Ͽ����ϴ�.";
    }
%>
<script>
    alert("<%=msg%>");	
    top.document.location.reload(); 
    location.href="<%=url%>";
</script>