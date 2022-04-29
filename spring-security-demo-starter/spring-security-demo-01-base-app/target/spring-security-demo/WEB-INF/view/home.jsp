<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Company Home Page</title>
</head>
<body>
<h2>freudromero Company Home Page - Yohoo!!!</h2>
<hr>

Welcome to the freudromero Company Home Page!


<%-- Add Logout button--%>
<form:form action="${pageContext.request.contextPath}/logout" method="post">

    <input type="submit" value="Logout"/>

</form:form>

</body>
</html>
