<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
�߰����� �Է��ϴµ���!!������������
${userInfo}<br>

<div>

<c:if test="${userInfo.nickname==null }">
	�г��� : <input type="text" placeholder="�г���" name="nickname">
</c:if>

<c:if test="${userInfo.email==null }">
<br>
	�̸��� : <input type="text" placeholder="email" name="email">
</c:if>



</div>



</body>
</html>