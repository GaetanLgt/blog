<?php
//--model
require './model.php';
//--controller
/**
 *  Si on a un Id d'article
 *
 * On récupère le contenu de l'article et le commentaires associés
 *
 * Et on calcule l'image redimmensionnée
 **/
if (isset($_GET['id']) && !empty($_GET['id'])) {
    $id = $_GET['id'];
    $article = getArticle($id);
    $commentaires = getComments($id);
}
$date = $article['created_at'];

$imageUrl = $article['image'];
$largeur = 300;
$imageDim = resizeImage($largeur, $article['image']);
if (!empty($imageDim)) {
    $hauteur = $imageDim[1];
}

/**
 *  Si on a un nouveau commentaire d'envoyé
 *
 *  Il est ajouté a la base et l'utilisateur est redirigé sur la même page
 **/
if (isset($_GET['com']) && $_GET['com'] == "new") {
    insertCom($_POST['username'], $_POST['content'], $_GET['id']);
    header("Location:view.php?id=$_GET[id]");
}

/**
 * substr — Retourne un segment de chaîne
 **/
$title = substr($article['titre'], 0, 27) . "...";

//--view
require './assets/partials/header.php';
require './assets/view/viewView.php';
require './assets/partials/footer.php';
