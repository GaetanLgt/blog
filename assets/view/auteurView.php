<div class="index container-fluid pt-3">
  <div class="container">
    <div class="row text-center">
        <div class="col-sm-12">
            <?php if(!isset($articles[0]["nom"])): ?>
            <?= $articles; ?>
            <?php else: ?>
            <div class="aut<?= $_GET["auteur"]; ?> border m-1 p-1">
            <h1>Ecrit par <em>--<u> <?= $articles[0]["prenom"]; ?> <?= $articles[0]["nom"]; ?> </u>--</em></h1>
            </div>
          <?php foreach($articles as $article): ?>
            <div class="aut<?= $_GET["auteur"]; ?> border m-1 p-1">
              <p>Ecrit le <?= strftime("%A %d %B %Y, %H:%M",strtotime($article['created_at'])) ; ?></p>
              <h2><?= $article['titre']; ?></h2>
                <div>
                  <p><?= substr($article['content'], 0 , 150); ?>...</p>
                </div>
                <div>     
                <p><a href="view.php?id=<?= $article['id']; ?>">Voir plus</a></p>
                </div>
            </div>
          <?php endforeach ?>
          <?php endif ?>
        </div>
      </div>
    </div>
  </div>