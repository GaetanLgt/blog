<div class="cat<?= $_GET["id"]; ?> container-fluid pt-3 ">
  <div class="container">
    <div class="row text-center">
        <div class="col-sm-12 ">
            <h1><u> <?= $_GET["nom_categorie"]; ?></u></h1>
          <?php foreach($articles as $article): ?>
            <div class="border m-1 p-1">
                <div class="text-center">
                  <p>Post n°<?= $article['id']; ?></p>
                </div>
              <p>Ecrit le <?= strftime("%A %d %B %Y, %H:%M",strtotime($article['created_at'])) ; ?>
               par <em><u><?= $article['prenom']; ?> <?= $article['nom']; ?></u></em></p>
              <h2><?= $article['titre']; ?></h2>
                <?php if(isset($article['image']) && !empty($article['image'])): ?>
                  <?php $resizeImg = resizeImage( 150,$article['image']);?>
                  <img src="<?= "./assets/".$article['image'];?>" alt="" width="150" height="<?= $resizeImg['1'] ?>">
                <?php endif ?>
                <div>
                  <p><?= substr($article['content'], 0 , 150); ?>...</p>
                </div>
                <div>     
                <p><a href="view.php?id=<?= $article['id']; ?>">Voir plus</a></p>
                </div>
            </div>
          <?php endforeach ?>
        </div>
      </div>
    </div>
  </div>