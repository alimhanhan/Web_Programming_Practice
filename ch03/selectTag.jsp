<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Select Tag</title>
</head>
<body>

<form action="#" method="get">
	<h3>Select #1</h3>
	<select name="city">
			<option value="�����">����Ư����</option>
			<option value="��⵵">��⵵</option>
			<option value="��õ��" selected>��õ������</option>
			<option value="��û��">��û��</option>
			<option value="����">����</option>
			<option value="���">���</option>
	</select>
	<p><p>
	<h3>Select #2</h3>
	<select name="city" size="6" multiple>
			<option value="�����">����Ư����</option>
			<option value="��⵵">��⵵</option>
			<option value="��õ��">��õ������</option>
			<option value="��û��">��û��</option>
			<option value="����">����</option>
			<option value="���">���</option>
	</select>
	<p> <input type="submit" value="����">
</form>

</body>
</html>