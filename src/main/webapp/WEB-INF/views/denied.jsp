<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Access Denied</title>
</head>
<body>
<h1>
    Access Denied!  
</h1>
     <c:choose>
        <c:when test="${pageContext.request.remoteUser != null}">
        <p> 
            Zalogowany jako: <b><c:out value="${pageContext.request.remoteUser}"/></b><br />
            Uprawnienia: <b><sec:authentication property="principal.authorities" /></b>
            <c:url var="logoutAction" value="/j_spring_security_logout"></c:url>
            <form action="${logoutAction}" method="post">
                <input type="submit" value="Logout" />
            </form>
        </p>
        </c:when>
        <c:otherwise>
            <p>Nie zalogowany - <a href="./login">Zaloguj sie</a></p>
        </c:otherwise>
    </c:choose>
</body>
</html>