<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta author="">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= $title; ?></title>
  <link rel="stylesheet" type="text/css" href="./assets/lib/bootstrap.min.css" >
  <link rel="stylesheet" type="text/css" href="./assets/css/style.css?version=1.0.0">
  <!--<script src="https://kit.fontawesome.com/9de8c46666.js" crossorigin="anonymous"></script>-->
</head>
<body>
  <header>
    <div class="container-fluid fixed-top">
      <div class="container fixed-top">
        <div class="row pb-2 pl-5 fixed-top">
          <div class="col-sm-4 pt-3">
        <h2 id=title><a href="index.php">&lt;Le blog de stars/&gt;</a></h2>
        </div>
        <div class="col-sm-5 pt-4 justify-content-between ">
        <?php if(isset($_SESSION) && !empty($_SESSION['id'])):?>
        <span> Bonjour <?= $_SESSION['prenom']; ?> <?= $_SESSION['nom']; ?>, vous pouvez </span>
        <span><a id="article" href="article.php">ajouter des articles</a></span>
        <?php endif ?>
        </div>
        <div class="col-sm-3 pt-4">
        <?php if(isset($_SESSION) && empty($_SESSION['id'])):?>
        <a class="btn btn-success i" href="login.php" >S'indentifer</a>    
        <?php endif ?>
        <?php if(isset($_SESSION) && !empty($_SESSION['id'])):?>
        <a class="btn btn-secondary" href="logout.php">Quitter la session</a>
        <?php endif ?>
        </div>
        </div>
      </div>
    </div>
  </header>
  
  <main>