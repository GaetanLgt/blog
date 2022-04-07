<div class="container-fluid pt-3">
  <div class="container">
    <div class="row"> 
      <form action="./assets/pages/traitement.php?inscrip=true" method="POST">
        <div class="form-group"> 
        <div class="form-group">
          <label for="nom">Votre nom</label>
          <input type="text" class="form-control" id="nom" name="nom">
        </div>
        <div class="form-group">
          <label for="prenom">Votre prenom</label>
          <input type="text" class="form-control" id="prenom" name="prenom">
        </div>
        <div class="form-group">
          <label for="mail">Votre e-mail</label>
          <input type="text" class="form-control" id="mail" name="mail">
        </div>
        <div class="form-group">
          <label for="password">Votre password</label>
          <input type="password" class="form-control" id="password" name="password">
        </div>
          <button type="submit" class="btn btn-dark">Envoyer</button>
        </div>
      </form>
   </div>
  </div>
</div>