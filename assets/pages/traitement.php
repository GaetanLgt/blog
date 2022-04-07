<?php
session_start();
//var_dump($_POST);

/**
*  Connexion dase de données
**/
require('../../model.php');

/**
* Pour l'upload de fichier et son déplacement 
**/

var_dump($_FILES);

if(isset($_FILES) && !empty($_FILES)){
move_uploaded_file($_FILES['image']['tmp_name'],"../img/".$_FILES['image']['name'] );
}
/**
*  Set de nouvelles catégorie
**/





/**
*  Insertion d'un nouvel article en base de données
*
**   $_POST => boite aux lettres -> formulaire 
*
**   $_GET => visible -> barre d'adresse ^^
**/
function insertArticle(){
  $bdd = bddconnect();
  $today = date("Y-m-d H:i:s");
  $titre = $bdd->quote($_POST['titre']);
  $slug = $bdd->quote($_POST['slug']);
  $image ="";
  
  if(isset($_FILES["image"]["name"]) && !empty($_FILES["image"]["name"])){
  $image = $bdd->quote("/img/".$_FILES['image']['name']);
  //var_dump("je suis là");
  }else{
  $image ='null';
  //var_dump($image);
  }
  $content = $bdd->quote($_POST['content']);
  $auteur_id = $_POST['auteur'];
  $categorie_id ="";
  /**
  *  Set de nouvelles catégorie
  **/
    if(isset($_POST['newCat']) && !empty($_POST['newCat'])){
    $categorie_id = setNewCategorie($_POST['newCat']);;
    } else if(isset($_POST['categorie']) && !empty($_POST['categorie'])){
      $categorie_id = $bdd->quote($_POST['categorie']);
      }
  //var_dump( $categorie_id);
  $query = "INSERT INTO articles (id , titre, slug, image, content, created_at, auteur_id , categorie_id) VALUES ( null , $titre , $slug, $image, $content, '$today' , '$auteur_id', $categorie_id )";
  var_dump($query);
  $bdd->query($query);
}

if(isset($_POST['titre']) && isset($_POST['slug']) && isset($_POST['content'])){
  insertArticle();
}

/**
*  Insertion d'un nouvel utilisateur en base de données
*  requête préparée 
**/
function inscription(){
  if(isset($_GET['inscrip']) && $_GET['inscrip']=="true"){
    $bdd = bddconnect();
    $nom = $bdd->quote($_POST['nom']);
    $prenom = $bdd->quote($_POST['prenom']);
    $mail = $bdd->quote($_POST['mail']);
    $passwordClair = $bdd->quote($_POST['password']);
    $password = password_hash($passwordClair, PASSWORD_BCRYPT);
    $query = "INSERT INTO auteurs( nom, prenom, mail, password) VALUES (:nom,:prenom,:mail,:password)";
    $statement = $bdd->prepare($query);
    $statement->bindParam(':nom', $nom);
    $statement->bindParam(':prenom', $prenom);
    $statement->bindParam(':mail', $mail);
    $statement->bindParam(':password', $password);
    $statement->execute();
    echo ("vous êtes inscrit :) ");
  }
}

if(isset($_GET['inscrip']) && $_GET['inscrip']=="true"){
  inscription();
}

/**
* REdirection ... vers index
**/

header("Location:../../index.php");