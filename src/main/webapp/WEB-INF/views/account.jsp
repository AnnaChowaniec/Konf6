<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="header.jsp"%>

    <div class="col-md-10">
        <h3>Zarządzanie kontem uzytkownika</h3>
        <br>
      <p class="main">
      <c:choose>
        <c:when test="${pageContext.request.remoteUser != null}">
        <p> 
            Zalogowany jako: <b><c:out value="${pageContext.request.remoteUser}"/></b><br />
            Uprawnienia: <b><sec:authentication property="principal.authorities" /></b>
            <form action="${pageContext.request.contextPath}/j_spring_security_logout" method="post">
                <input type="submit" value="Logout" />
            </form>
        </p>
        </c:when>
        <c:otherwise>
            <p>Nie zalogowany - <a href="${pageContext.request.contextPath}/login">Zaloguj sie</a></p>
        </c:otherwise>
    </c:choose>
      </p>
    </div>

<%@ include file="footer.jsp"%>