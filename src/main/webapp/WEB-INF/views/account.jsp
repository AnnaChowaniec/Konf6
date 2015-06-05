<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="header.jsp"%>


<div class="col-md-10">
	<!-- POCZATEK sekscji srodkowej - dynamicznej -->


	<!-- Zakładki -->
	<ul class="nav nav-tabs" role="tablist">
		<li class="active"><a href="#witaj" role="tab" data-toggle="tab">Witaj</a>
		</li>
		<li><a href="#moje_artykuly" role="tab" data-toggle="tab">Moje
				artykuły</a></li>
		<li><a href="#moje_recenzje" role="tab" data-toggle="tab">Moje
				recenzje</a></li>
		<li><a href="#moje_konto" role="tab" data-toggle="tab">Moje
				konto</a></li>
		<li><a href="#pomoc" role="tab" data-toggle="tab">Pomoc</a></li>

	</ul>

	<!-- Zawartość zakładek -->

	<!-- Zakladka: WITAJ - START -->
	<div class="tab-content">
		<div class="tab-pane active" id="witaj">
			<h3 class="text-left">Witaj <c:out value="${pageContext.request.remoteUser}" />!</h3>
			<br>

			<p class="main">Lorem ipsum dolor sit amet, consectetur
				adipisicing elit, sed do eiusmod tempor incididunt ut labore et
				dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur
				adipiscing elit, sed do eiusmod tempor incididunt ut labore et
				dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
				exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit
				esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
				cupidatat non proident, sunt in culpa qui officia deserunt mollit
				anim id est laborum. Lorem ipsum dolor sit amet, consectetur
				adipiscing elit, sed do eiusmod tempor incididunt ut labore et
				dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
				exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat.</p>
			<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa
				qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor
				sit amet, consectetur adipiscing elit, sed do eiusmod tempor
				incididunt ut labore et dolore magna aliqua. Ut enim ad minim
				veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
				ea commodo consequat.</p>
			<br> <br>


			<div class="col-md-1 col-md-offset-10">
				<form
					action="${pageContext.request.contextPath}/j_spring_security_logout"
					method="post">
					<input type="submit" class="btn btn-info" value="Wyloguj się" />
				</form>
			</div>

		</div>
		<!-- Zakladka: WITAJ - END -->


		<!-- Zakladka: MOJE ARTYKULY - START -->

		<div class="tab-pane" id="moje_artykuly">
			<h3 class="text-left">Moje artykuły</h3>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th class="active">Np.</th>
						<th class="active">Tytuł artykułu</th>
						<th class="active">Kategoria</th>
						<th class="active">Artykuł</th>
						<th class="active">Recenzja</th>
						<th class="active">Aktualizuj</th>
						<th class="active">Wycofaj</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Artykuł 1</td>
						<td>Kategoria 1</td>
						<td><a href="">art1.docx</a></td>
						<td><a href="">rec1.docx</a></td>
						<td>
							<button type="button" class="btn btn-info">Aktualizuj</button>
						</td>
						<td>
							<button type="button" class="btn btn-info">Wycofaj</button>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Artykuł 2</td>
						<td>Kategoria 2</td>
						<td><a href="">art2.docx</a></td>
						<td><a href="">rec2.docx</a></td>
						<td>
							<button type="button" class="btn btn-info">Aktualizuj</button>
						</td>
						<td>
							<button type="button" class="btn btn-info">Wycofaj</button>
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td>Artykuł 3</td>
						<td>Kategoria 3</td>
						<td><a href="">art3.docx</a></td>
						<td>oczekiwanie</td>
						<td>
							<button type="button" class="btn btn-info">Aktualizuj</button>
						</td>
						<td>
							<button type="button" class="btn btn-info">Wycofaj</button>
						</td>
					</tr>
				</tbody>
			</table>
			<br>
			<div class="">
				<button type="button" class="btn btn-info">Dodaj nowy
					artykuł</button>
			</div>
		</div>
		<!-- Zakladka: MOJE ARTYKULY - END -->

		<!-- Zakladka: MOJE RECENZJE - START -->

		<div class="tab-pane" id="moje_recenzje">
			<h3 class="text-left">Moje recenzje</h3>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th class="active">Np.</th>
						<th class="active">Tytuł artykułu</th>
						<th class="active">Kategoria</th>
						<th class="active">Artykuł</th>
						<th class="active">Formularz</th>
						<th class="active">Recenzja</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Artykuł 1</td>
						<td>Kategoria 1</td>
						<td><a href="">art1.docx</a></td>
						<td>
							<button type="button" class="btn btn-info">Wypełnij</button>
						</td>
						<td>
							<button type="button" class="btn btn-info">Dodaj</button>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Artykuł 2</td>
						<td>Kategoria 2</td>
						<td><a href="">art2.docx</a></td>
						<td>
							<button type="button" class="btn btn-info">Wypełnij</button>
						</td>
						<td>
							<button type="button" class="btn btn-info">Dodaj</button>
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td>Artykuł 3</td>
						<td>Kategoria 3</td>
						<td><a href="">art3.docx</a></td>
						<td>
							<button type="button" class="btn btn-info">Wypełnij</button>
						</td>
						<td><a href="">rec3.docx</a></td>
					</tr>
				</tbody>
			</table>
			<br> <br>


		</div>
		<!-- Zakladka: MOJE RECENZJE - END -->

		<!-- Zakladka: MOJE KONTO - START -->

		<div class="tab-pane" id="moje_konto">
			<div class="row">
				<div class=" col-md-8 ">
					<h3 class="text-left">Edytuj szczegóły rejestracji</h3>
					<br>
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-md-10">
								<label for="email">Imię i nazwisko:</label> <input type="email"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-10">
								<label for="pwd">Adres zamieszkania:</label> <input
									type="password" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-10">
								<label for="pwd">Numer telefonu:</label> <input type="password"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-10">
								<label for="pwd">Adres e-mail:</label> <input type="password"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-10">
								<label for="pwd">Wykształecenie:</label> <select
									class="form-control" id="sel1">
									<option>opcja 1</option>
									<option>opcja 2</option>
									<option>opcja 3</option>
									<option>opcja 4</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-10">
								<label for="pwd">Ukończona szkoła:</label> <select
									class="form-control" id="sel1">
									<option>opcja 1</option>
									<option>opcja 2</option>
									<option>opcja 3</option>
									<option>opcja 4</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-10">
								<label for="comment">Jeżeli na powyższej liście nie
									znalazłeś odpowiedniej opcji, wpisz swoją uczelnię w poniższym
									polu:</label>
								<textarea class="form-control" rows="1" id="comment"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-10">
								<label for="pwd">Profil specjalizacji:</label>
								<div class="checkbox">
									<label> <input type="checkbox" value="">Dziedzina
										1
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value="">Dziedzina
										2
									</label>
								</div>
								<div class="checkbox ">
									<label> <input type="checkbox" value="">Dziedzina
										3
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value="">Dziedzina
										4
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value="">Dziedzina
										5
									</label>
								</div>
							</div>
						</div>
						<br> <input type="submit" class="btn btn-info"
							value="Zapisz zmiany">
					</form>
				</div>
				<div class="col-md-4 ">
					<h3 class="text-left">Edytuj hasło</h3>
					<br>
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-md-8">
								<label for="pwd">Nowe hasło:</label> <input type="password"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-8">
								<label for="pwd">Potwierdź hasło:</label> <input type="password"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-8">
								<label for="pwd">Aktualne hasło:</label> <input type="password"
									class="form-control">
							</div>
						</div>
						<br> <input type="submit" class="btn btn-info"
							value="Zapisz zmiany">
					</form>
				</div>

			</div>
		</div>


		<!-- Zakladka: MOJE KONTO - END -->
		<!-- Zakladka: POMOC - START -->
		<div class="tab-pane" id="pomoc">
			<h3 class="text-left">Najczęściej zadawane pytania</h3>
			<br>

			<ol>
				<li>
					<h4>Excepteur sint occaecat cupidatat non proident, sunt in
						culpa qui officia deserunt?</h4>
					<p class="main">Asint occaecat cupidatat non proident, sunt in
						culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum
						dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim
						veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
						ex ea commodo consequat.</p>
				</li>
				<li>
					<h4>Excepteur sint occaecat cupidatat non proident, sunt in
						culpa qui officia deserunt?</h4>
					<p class="main">Asint occaecat cupidatat non proident, sunt in
						culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum
						dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim
						veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
						ex ea commodo consequat.</p>
				</li>
				<h4>Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt?</h4>
				<p class="main">Asint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum
					dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
					incididunt ut labore et dolore magna aliqua. Ut enim ad minim
					veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
					ex ea commodo consequat.</p>
				</li>
				<li>
					<h4>Excepteur sint occaecat cupidatat non proident, sunt in
						culpa qui officia deserunt?</h4>
					<p class="main">Asint occaecat cupidatat non proident, sunt in
						culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum
						dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim
						veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
						ex ea commodo consequat.</p>
				</li>
			</ol>
			<br>
			<h4>Można również skontaktować się telefonicznie: XX-XXX-XXX-XXX</h4>

			<br>

		</div>
		<!-- Zakladka: POMOC - END -->

		<!-- KONIEC sekscji srodkowej - dynamicznej -->
	</div>


	<!-- KONIEC sekscji srodkowej - dynamicznej -->
</div>
<!--  col-md-10 -->


<%@ include file="footer.jsp"%>