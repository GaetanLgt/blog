<?php

require './model.php';

/**
 * Si on a bien un id catégorie
 *
 * Récupère les articles de la catégorie et les affiche
 **/
if (isset($_GET['id']) && !empty($_GET['id'])) {
    $id = $_GET['id'];
    $articles = getArticleCategorie($id);
    $title = $_GET['nom_categorie'];
}

require './assets/partials/header.php';
//var_dump($articles);
require './assets/view/categorieView.php';
require './assets/partials/footer.php';
