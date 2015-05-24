<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
    <title>Lista artykulow</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>"/>
</head>

<body>
<div id="container">
    <div id="content">
        <h1>Lista artykulow</h1>

        <form:form commandName="newArticle" id="reg">
            <h2>Dodaj nowy artykul</h2>

            <table>
                <tbody>
                <tr>
                    <td><form:label path="title">Tytul:</form:label></td>
                    <td><form:input path="title"/></td>
                    <td><form:errors class="invalid" path="title"/></td>
                </tr>
                <tr>
                    <td><form:label path="description">Opis:</form:label></td>
                    <td><form:input path="description"/></td>
                    <td><form:errors class="invalid" path="description"/></td>
                </tr>
                <tr>
                    <td><p style="color: red">${error}</p></td>
                </tr>
                </tbody>
            </table>
            <table>
                <tr>
                    <td>
                        <input type="submit" value="Register" class="register"/>
                        <input type="reset" value="Cancel" class="cancel"/>
                    </td>
                </tr>
            </table>
        </form:form>
        
        <h2>Lista artykulow</h2>
        <c:choose>
            <c:when test="${articles.size()==0}">
                <em>Brak artykulow.</em>
            </c:when>
            <c:otherwise>
                <table id="articlesTable" class="simpletablestyle">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Tytul</th>
                            <th>URL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${articles}" var="article">
                            <tr>
                                <td>${article.id}</td>
                                <td>${article.title}</td>
                                <td><a href="<c:url value="/article/${article.id}"/>">Wiecej...</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:otherwise>
        </c:choose>
    </div>
    <div id="aside">
        <p>Lista zarejestrowanych artykulow.<br />Mozna dodac nowy.<br />Lub kliknac "Wiecej..." by zobaczyc szczegoly artykulu</p>
    </div>
    <div id="footer">
        <p>Stopka</p>
    </div>
</div>
</body>
</html>
