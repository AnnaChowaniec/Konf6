<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false"%>
<html>
<head>
<title>Konf6 - Strona glowna</title>
</head>
<body>
    <h1>Witaj na stronie Konf6</h1>

    <p>
      Zalogowany jako: <b><c:out value="${pageContext.request.remoteUser}"/></b><br />
      Uprawnienia: <b><sec:authentication property="principal.authorities" /></b>
    </p>
 
    <p>The time on the server is ${serverTime}.</p>
    
    <p>
      <ul>
        <li><a href="./articles">Artykuly</a></li>
      </ul>
    </p>
</body>
</html>