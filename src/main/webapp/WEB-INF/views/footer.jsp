<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- KONIEC sekscji srodkowej - dynamicznej -->

</div>
    <hr>    

<!-- wyskakujace okienko logowania -->
<c:url var="loginUrl" value="/j_spring_security_check"></c:url>
<div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h1 class="text-center">Logowanie</h1>
      </div>
      <div class="modal-body">
          <form class="form center-block" action="${loginUrl}" method="POST">
            <div class="form-group">
              <input class="form-control input-lg" placeholder="E-mail" type="text" name="username">
            </div>
            <div class="form-group">
              <input class="form-control input-lg" placeholder="Hasło" type="password" name="password">
            </div>
            <div class="form-group">
              <button class="btn btn-primary btn-lg btn-block">Zaloguj</button>
            </div>
          </form>
      </div>
  </div>
  </div>
</div>

    
<!-- wyskakujace okienko rejestracji -->

<div id="signModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h1 class="text-center">Rejestracja</h1>
      </div>
      <div class="modal-body">
          <div class="well">Dane osobowe</div>
		  	   <div class="form-group">
					  <label for="usr">Imię i nazwisko:</label>
						<input type="text" class="form-control" name="name" id="usr">
				</div>
				<div class="form-group">
					<label for="pwd">Adres zamieszkania:</label>
						<input type="password" class="form-control" name="address" id="pwd">
				</div>
				 <div class="form-group">
					  <label for="phone">Numer telefonu:</label>
						<input type="text" class="form-control" name="phone" id="phone">
				</div>
				<div class="form-group">
					<label for="mail">Adres e-mail:</label>
						<input type="text" class="form-control" name="mail" id="mail">
				</div>
          <div class="well">Hasło</div>
		  	   <div class="form-group">
					  <label for="usr">Wpisz hasło:</label>
						<input type="password" class="form-control" name="password" id="password">
				</div>
				<div class="form-group">
					<label for="pwd">Potwierdź hasło</label>
						<input type="password" class="form-control" name="password" id="password">
				</div>
          
	<div class="well">Wykształcenie</div>
		 <div class="form-group">
		  <label for="sel1">Wykształcenie</label>
		  <select class="form-control" id="sel1">
			<option>opcja 1</option>
			<option>opcja 2</option>
			<option>opcja 3</option>
			<option>opcja 4</option>
		  </select>
		</div>
		<div class="form-group">
		  <label for="sel1">Ukończona szkoła:</label>
		  <select class="form-control" id="sel1">
			<option>opcja 1</option>
			<option>opcja 2</option>
			<option>opcja 3</option>
			<option>opcja 4</option>
		  </select>
		</div>
		 <div class="form-group">
		  <label for="comment">Jeżeli na powyższej liście nie znalazłeś odpowiedniej opcji, wpisz swoją uczelnię w poniższym polu:</label>
		  <textarea class="form-control" rows="1" id="comment"></textarea>
		</div>
	<div class="well">Profil specjalizacji</div>
		 <div class="checkbox">
		  <label><input type="checkbox" value="">Dziedzina 1</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="">Dziedzina 2</label>
			</div>
			<div class="checkbox ">
			  <label><input type="checkbox" value="" >Dziedzina 3</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Dziedzina 4</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="">Dziedzina 5</label>
			</div>
	<div class="well">Charakter udziału w konferencji:</div>
		<div class="radio">
		  <label><input type="radio" name="optradio">Prelegent</label>
		</div>
		<div class="radio">
		  <label><input type="radio" name="optradio">Recenzent</label>
		</div>
		<div class="form-group">
		  <label for="comment">Masz pytania, uwagi? Napisz, na pewno odpowiemy!</label>
		  <textarea class="form-control" rows="5" id="comment"></textarea>
		</div>
	<button type="button" class="btn btn-success">Wyślij zgłoszenie</button>
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
          <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
		  </div>	
      </div>
  </div>
  </div>
</div>

    
    
<!-- wyskakujace okienko o autorach -->
<div id="autorsModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h2 class="text-center">Aplikację stworzyła GRUPA 6</h2>
      </div>
      <div class="modal-body">
          <form class="form center-block">
            <div class="list-group">
              <a class="list-group-item">
                <h4 class="list-group-item-heading">Roman Jagiełka</h4>
                <p class="list-group-item-text">Project Management, zarządzanie ryzykiem.</p>
              </a>
              <a class="list-group-item">
                <h4 class="list-group-item-heading">Krzysztof Sroczyński</h4>
                <p class="list-group-item-text">Architektura systemu, analiza wymagań klienta.</p>
              </a>
              <a class="list-group-item">
                <h4 class="list-group-item-heading">Anna Chowaniec - Kałka</h4>
                <p class="list-group-item-text">Developer - front-end and back-end, architektura systemu.</p>
              </a>
              <a class="list-group-item">
                <h4 class="list-group-item-heading">Katarzyna Sender</h4>
                <p class="list-group-item-text">Developer - specjalista ds. bazy danych, analiza wymagań.</p>
              </a>
                <a class="list-group-item">
                <h4 class="list-group-item-heading">Agnieszka Stefańska</h4>
                <p class="list-group-item-text">Developer - front-end, kontakt z klientem.</p>
              </a>
              <a class="list-group-item">
                <h4 class="list-group-item-heading">Marcin Krakowski</h4>
                <p class="list-group-item-text">Analiza wymagań klienta, projekt systemu.</p>
              </a>
            </div>
          </form>
      </div>
  </div>
  </div>
</div>

<!-- wyskakujace okienko kontaktu -->
<div id="contactModal" class="modal fade" tabindex="-1" role="dialog"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h2 class="text-center">Kontakt</h2>
			</div>
			<div class="modal-body">
				<form class="form center-block">
					<div class="list-group">
						<a class="list-group-item">
							<h4 class="list-group-item-heading">Nazwa:</h4>
							<p class="list-group-item-text">consectetur adipisicing elit,
								sed do eiusmod...</p>
						</a> <a class="list-group-item">
							<h4 class="list-group-item-heading">Adres:</h4>
							<p class="list-group-item-text">consectetur adipisicing elit,
								sed do eiusmod...</p>
						</a> <a class="list-group-item">
							<h4 class="list-group-item-heading">Telefon:</h4>
							<p class="list-group-item-text">XXX-XX-XX-XX</p>
						</a> <a class="list-group-item">
							<h4 class="list-group-item-heading">E-mail:</h4>
							<p class="list-group-item-text">xxxxxxxx@xxxx.xx</p>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<footer>
</footer>
    	
	<!-- Latest compiled and minified JavaScript -->
	<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>	
</html>