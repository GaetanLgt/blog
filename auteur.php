<?php

require './model.php';

/**
 * Si on a bien un id auteur
 *
 * Récupère les articles de l'auteur et les affiche
 **/
if (isset($_GET['auteur']) && !empty($_GET['auteur'])) {
    $id = $_GET['auteur'];
    $articles = getArticleAuteur($id);
    $title = $articles[0]['prenom'] . ' ' . $articles[0]['nom'];
}

require './assets/partials/header.php';
//var_dump($articles);
require './assets/view/auteurView.php';
require './assets/partials/footer.php';
