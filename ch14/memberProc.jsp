<%@page contentType="text/html; charset=EUC-KR" %>
<%request.setCharacterEncoding("EUC-KR");%>

<jsp:useBean id="bean" class="ch14.MemberBean"/>
<jsp:useBean id="mgr" class="ch14.MemberMgr"/>

<jsp:setProperty property="*" name="bean"/>
<%
		boolean result = mgr.insertMember(bean);
		String msg = "ȸ�����Կ� ���� �Ͽ����ϴ�.";
		String location = "member.jsp";
		if(result){
			msg = "ȸ�������� �Ͽ����ϴ�.";
			location = "contentWin.jsp";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>