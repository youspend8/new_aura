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
蓄亜舛左 脊径馬澗汽陥!!せせせせせせ
${userInfo}<br>

<div>

<c:if test="${userInfo.nickname==null }">
	莞革績 : <input type="text" placeholder="莞革績" name="nickname">
</c:if>

<c:if test="${userInfo.email==null }">
<br>
	戚五析 : <input type="text" placeholder="email" name="email">
</c:if>



</div>



</body>
</html>