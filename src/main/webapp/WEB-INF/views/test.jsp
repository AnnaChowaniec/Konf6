<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="header.jsp"%>

    <div class="col-md-10">
        <h3>Strona pomocy dla testerów systemu</h3>
        <br>
      <p class="main">
      Testowe pary login/hasło i skojarzone zestawy uprawnień:
      <ul>
      <li>test/test - zawiera uprawnienia autora, recenzenta i admina</li>
      <li>admin/admin dla uprawnień pełnego administratora (zawiera w sobie autora i recenzenta)</li>
      <li>author/author dla uprawnień autora</li>
      <li>reviewer/reviewer dla uprawnień recenzenta (zawiera tez uprawnienia autora)</li>
      </ul>
      </p>
    </div>

<%@ include file="footer.jsp"%>