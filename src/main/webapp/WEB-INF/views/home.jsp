<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false"%>
<html>
<head>
<title>Konf6 - Strona glowna</title>
</head>
<body>
    <h1>Witaj na stronie Konf6</h1>

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
 
    <p>The time on the server is ${serverTime}.</p>
    
    <p>
      <ul>
        <li><a href="./articles">Artykuly</a></li>
      </ul>
    </p>
</body>
</html>