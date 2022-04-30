<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Company Home Page</title>
</head>
<body>
<h2>freudromero Company Home Page - Yohoo!!!</h2>
<hr>

<p>
    Welcome to the freudromero Company Home Page!
</p>

<hr>
<%--display username and role--%>
<p>
    User: <security:authentication property="principal.username"/>
    <br><br>
    Role(s): <security:authentication property="principal.authorities"/>
</p>

<hr>


<security:authorize access="hasRole('MANAGER')">
    <%--Add link to point to /leaders ... this is for the managers--%>
    <p>
        <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
        (Only for manager peeps)
    </p>
</security:authorize>

<security:authorize access="hasRole('ADMIN')">
<%--Add a link to point to /systems ... this is only for the admins--%>
    <p>
        <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
        (Only for admin peeps)
    </p>
</security:authorize>



<%-- Add Logout button--%>
<form:form action="${pageContext.request.contextPath}/logout" method="post">

    <input type="submit" value="Logout"/>

</form:form>

</body>
</html>
