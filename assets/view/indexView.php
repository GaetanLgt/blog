<div class="index container-fluid pt-3">
  <div class="container">
    <div class="row">
      <div class="col-sm-8">
        <?php foreach($articles as $article): ?>
        <div class="bg-white border border-dark m-1 p-1">
          <div class="text-center"><p>Post n°<?= $article['id']; ?></p>
          <?php if(isset($article['image']) && !empty($article['image'])): ?>
            <?php $resizeImg = resizeImage( 75,$article['image']);?>
            <img src="<?= "./assets/".$article['image'];?>" alt="" width="75" height="<?= $resizeImg['1'] ?>">
          <?php endif ?>
          </div>
          <div class="text-center">
          <h1><?= strlen ($article['titre'])>50 ? substr($article['titre'], 0 , 50)."..." :$article['titre'] ; ?></h1>
          </div>
          <div>
          <p><?= substr($article['content'], 0 , 150); ?>...</p>
          </div>
          <div class="text-right">
          <p>Ecrit par <i>"<?= $article['prenom']; ?> <?= $article['nom']; ?>"</i> </p>
          </div>
          <div class="text-center">
          <p><a href="view.php?id=<?= $article['id']; ?>">Voir plus</a></p>
          </div>
        </div>
        <?php endforeach ?>
          <div class="m-1 p-1 text-center">
        <?php for($i=1; $i<=$nbPages;$i++): ?>
          <a class="border border-warning bg-warning m-1 p-1" href="index.php?page=<?= $i;?>">&nbsp;<?= $i;?>&nbsp;</a>
        <?php endfor ?>
          </div>
      </div>
      <div class="col-sm-4 pt-5">
        <div id="cat" class="m-2 border border-primary">
        <div class="text-center">
        <h2 class="pl-3">&lt; Nos Catégories/&gt;</h2>
        
        <ul>
          <?php foreach($categories as $categorie): ?>
            <li><a href="categorie.php?id=<?= $categorie['id']; ?>&nom_categorie=<?= $categorie['nom_categorie']; ?>"><?= $categorie['nom_categorie']; ?></a></li>
          <?php endforeach ?>
        </div>
      </ul>
      </div>
      <div id="aut" class="m-2 border border-primary">
        <div class="text-center">
        <h2 class="pl-3">&lt; Nos Auteurs/&gt;</h2>
        
        <ul>
          <?php foreach($auteurs as $auteur): ?>
            <li><a href="auteur.php?auteur=<?= $auteur['id']; ?>"><?= $auteur['prenom']; ?> <?= $auteur['nom']; ?></a></li>
        <?php endforeach ?>
          </div>
        </div>
    </div>
  </div>
</div>