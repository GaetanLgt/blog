<?php

require('./model.php');
$categories = getCategories();
//var_dump($categories);
$title = "article";
require('./assets/partials/header.php');

/**
* Si on a un mot de passe et un nom d'utilisateur
*
* on vérifie le mot de passe entré avec celui-ci stocké en BDD
*
* Si c'est la correpsondance est bonne connexion et message
*
* Sinon on renvoi sur le login
**/
if(isset($_POST['username']) && isset($_POST['password'])) {
  $bdd = bddconnect();
  $username = $bdd->quote($_POST['username']);
  $select = $bdd->query("SELECT id, password, nom, prenom FROM auteurs WHERE mail=$username ");
  $passverif = $select->fetch(PDO::FETCH_ASSOC);
  //var_dump($passverif);
  if(password_verify($_POST['password'], $passverif['password'])) {
    echo '<div class="border border-success bg-success">Le mot de passe est valide !</div></br>';
    $_SESSION = $passverif;
  } else {
    echo '<div class="border border-danger bg-danger">Le mot de passe est invalide.</div>';
    $_SESSION=array();
    header("location:login.php");
}
}

/**
*  N'autorise pas l'accès a la page si l'utilisateur n'est pas identifié
**/
if(isset($_SESSION) && empty($_SESSION['id'])){
header("location:login.php");
}


require('./assets/view/articleView.php');

require('./assets/partials/footer.php');
?>