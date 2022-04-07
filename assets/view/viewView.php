<div class="cat<?= $article['categorie_id']; ?> container-fluid pt-3">
    <div class="container text-center">
        <h1><?= $article['titre']; ?> </h1>
        <?php if (isset($imageUrl) && !empty($imageUrl)) {
            echo "<img src='./assets" . $imageUrl . "' alt='' width=$largeur height=$hauteur>";
        }; ?>
        <div>
            <p><?= $article['content']; ?></p>
            <p>Ecrit par <em><?= $article['prenom']; ?> <?= $article['nom']; ?></em> ,le
                <?= strftime("%A %d %B %Y, %H:%M", strtotime($date)); ?></p>

        </div>
        <div class="container">
            <?php if (isset($commentaires) && !empty($commentaires)) : ?>
            <h1><i><u>Les Commentaires</u></i></h1>
            <div class="border border-dark p-2 m-2">
                <?php foreach ($commentaires as $commentaire) : ?>
                <div class="border border-dark p-2 m-2">
                    <div><b><?= $commentaire['nom_auteur']; ?></b> le
                        <?= date('d/m/Y H:i', strtotime($commentaire['date'])); ?></div>
                    <div><?= $commentaire['content']; ?></div>
                </div>
                <?php endforeach ?>
            </div>
            <?php endif ?>

        </div>
        <div class="container pb-5">
            <form action="./view.php?id=<?= $_GET['id']; ?>&com=new" method="post">
                <div class="form-group">
                    <label for="username"></label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Votre pseudo"
                        required>
                </div>
                <div class="form-group">
                    <textarea class="form-control" type="text" id="content" name="content"
                        placeholder="Votre commentaire ici" required></textarea>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Soumettre le commentaire</button>
                </div>
            </form>

        </div>
    </div>
</div>