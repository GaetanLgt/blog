<div class="container-fluid pt-3">
  <div class="container">
    <div class="border border-success p-1 m-1">
      <form action="./assets/pages/traitement.php" method="post" enctype="multipart/form-data">
        <div class="form-group">
          <input class="form-control" type="text" id="titre" name="titre" placeholder="Votre titre" required>
        </div>
        <div class="form-group">
          <input class="form-control" type="text" id="slug" name="slug" placeholder="Votre slug" required>
        </div>
        <div class="form-group">
          <input class="form-control" type="file" id="image" name="image" placeholder="image">
        </div>
        <div class="form-group">
          <textarea class="form-control" type="text" id="content" name="content" placeholder="Votre contenu ici" required></textarea>
        </div>
        <div class="form-group">
          <select class="form-control" id="categorie" name="categorie" placeholder="id_categorie">
          <option value="">Votre catégorie</option>
          <?php foreach($categories as $categorie): ?>
          <option value="<?= $categorie['id']; ?>"><?= $categorie['nom_categorie']; ?></option>
          <?php endforeach ?>
          </select>
        </div>
        <div class="form-group">
          <input class="form-control" type="text" id="newCat" name="newCat" placeholder="Votre nouvelle catégorie">
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary">Envoyer l'article</button>
          <input type="number" class="invisible" id="auteur" name="auteur" placeholder="id_auteur" value="<?= $_SESSION['id']; ?>"required>
        </div>
      </form>
    </div>
  </div>
</div>