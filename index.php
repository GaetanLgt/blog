<?php
require './model.php';

$articles = getTtArticles();
$nbArticles = getNbArticles();
//var_dump($nbArticles);
$articlesParPages = 10;

/**
 *   Pour avoir le nombre de pages
 *
 *  ceil — Arrondit au nombre supérieur
 **/
$nbPages = ceil($nbArticles['nbArticles'] / $articlesParPages);
//var_dump($nbPages);

/**
 *   Si on a un N° de page
 *
 *   calcule l'offset (nombre d'article non affichés) et retourne les $articlesParPages demandés
 *
 *   sinon
 *
 *   getarticles() prend les valeurs de base mises dans model.php par défaut
 **/
if (isset($_GET["page"]) && !empty($_GET["page"])) {
    $offset = $_GET["page"] * $articlesParPages - $articlesParPages;
    $articles = getArticles($offset, $articlesParPages);
} else {
    $articles = getArticles();
}

$auteurs = getAuteur();
$categories = getCategories();
//var_dump($_SESSION);
$title = "<Le blog des stars/>";

require './assets/partials/header.php';

require './assets/view/indexView.php';

require './assets/partials/footer.php';
