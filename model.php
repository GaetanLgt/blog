<?php
/*<?=  veut dire <?php echo */

/**
 * pour avoir le format français sur la date;
 *
 * setlocale — Modifie les informations de localisation
 *
 * LC_TIME pour le format de date et d'heure avec strftime()
 *
 * "fr_FR","French" format francais, langue francaise
 **/
//setlocale(LC_TIME, "fr_FR","French");
setlocale(LC_TIME, "fr_FR", "FRENCH");

/**
 * Bdd Connexion
 *
 * connexion à la base mySQL
 *
 * mysql:host=nom de l'hote;dbname=nom de la base ','username', 'mdp'
 *
 * Retourne une erreur en cas de problème
 *
 * @return PDO
 */
function bddconnect()
{
    try {
        $bdd = new PDO('mysql:host=localhost;dbname=blog', 'admin', 'Oracle$1986');
        return $bdd;
    } catch (PDOException $e) {
        echo 'echec de la connexion : ' . $e->getMessage();
        die();
    }
}

/**
 *  Recupère tout les articles
 *
 *  ORDER BY articles.id DESC => tri DESC orgarnisé en fonction des ids articles
 *
 * fetchAll => resultat multiples
 *
 * @return FETCH_ASSOC
 *
 * retourne les articles
 **/
function getTtArticles()
{
    $bdd = bddconnect();
    $articles = $bdd->query("SELECT articles.id ,titre , image ,content, created_at, nom, prenom , nom_categorie FROM articles INNER JOIN auteurs ON auteur_id = auteurs.id INNER JOIN categories ON categorie_id = categories.id ORDER BY articles.id DESC")->fetchAll(PDO::FETCH_ASSOC);
    return $articles;
}

/**
 *   Compte le nb total d'articles dans la base et le mets dans $nbarticles
 *
 * @return FETCH_ASSOC
 *
 * retourne le Nb d'articles total
 **/
function getNbArticles()
{
    $bdd = bddconnect();
    $nbArticles = $bdd->query("SELECT COUNT(*) as nbArticles FROM articles INNER JOIN auteurs ON auteur_id = auteurs.id INNER JOIN categories ON categorie_id = categories.id ORDER BY articles.id DESC ")->fetch(PDO::FETCH_ASSOC);
    return $nbArticles;
}

/**
 *   donne les $limit articles après $offet ingnorés
 *
 *   si pas d'envoi de offset en paramètre alors $offset = 0
 *
 *   si pas d'envoi de lmite en paramètre alors $limit = 10
 *
 *   ORDER BY articles.id DESC tri en descendant par id
 *
 * LIMIT $offet, $limit => Limite les résultats à $limit résultat et saute les $offets premiers résultats (--Query--)
 *
 * @return FETCH_ASSOC
 *
 * retourne les articles
 **/
function getArticles($offet = 0, $limit = 10)
{
    $bdd = bddconnect();
    $limit = "LIMIT $offet, $limit";
    $articles = $bdd->query("SELECT articles.id ,titre , image ,content, created_at, nom, prenom , nom_categorie,categorie_id FROM articles INNER JOIN auteurs ON auteur_id = auteurs.id INNER JOIN categories ON categorie_id = categories.id ORDER BY articles.id DESC $limit ")->fetchAll(PDO::FETCH_ASSOC);
    return $articles;
}

/**
 *   récupère les informations de tous les auteurs
 *
 *   @return FETCH_ASSOC
 *
 * retourne les auteurs
 **/
function getAuteur()
{
    $bdd = bddconnect();
    $auteurs = $bdd->query("SELECT id, nom , prenom FROM auteurs")->fetchAll(PDO::FETCH_ASSOC);
    return $auteurs;
}

/**
 *   Récupère tous les articles d'un auteur avec tri
 *
 *   $articles[0]["nom"] => tableau a double entrée
 *
 *   retourne les articles si il y en a par rapport a l'id auteur
 *
 *   sinon message pour dire qu'il n'y a rien
 *
 *   @return FETCH_ASSOC
 *
 * retourne les articles de l'auteur
 **/
function getArticleAuteur($id)
{
    $bdd = bddconnect();
    $articles = $bdd->query("SELECT articles.id ,titre , image ,content, created_at, nom, prenom , nom_categorie FROM articles INNER JOIN auteurs ON auteur_id = auteurs.id INNER JOIN categories ON categorie_id = categories.id WHERE articles.auteur_id=$id ORDER BY articles.id DESC")->fetchAll(PDO::FETCH_ASSOC);
    //var_dump($articles);
    if (isset($articles[0]["nom"])) {
        return $articles;
    } else if (!isset($articles[0]["nom"])) {
        $vide = "<h2>Cet auteur n'a pas d'article</h2>";
        return $vide;
    }
}

/**
 *  Retourne un article en fonction de l'id envoyé
 *
 *   @param int $id
 *
 *   @return FETCH_ASSOC
 *
 * retourne UN article
 **/
function getArticle($id)
{
    $bdd = bddconnect();
    $article = $bdd->query("SELECT titre , image ,content, created_at, nom, prenom , nom_categorie , categorie_id FROM articles INNER JOIN auteurs ON auteur_id = auteurs.id INNER JOIN categories ON categorie_id = categories.id WHERE articles.id=$id")->fetch(PDO::FETCH_ASSOC);
    return $article;
}

/**
 *  Insertion de commentaire
 *
 *  quote-> evite les erreurs par rapports au caractères spéciaux et les injections SQL
 *
 *  date() — Formate une date/heure locale
 *
 *  Insertion dans la table commentaires
 *
 *  récupération de l'id du dernier commentaire
 *
 *  insertion de la combinaison Id article et Id com dans la table article_commentaire
 *
 *  @param string $pseudo
 *
 *  @param string $commentaire
 *
 *  @param int $article_id
 **/
function insertCom($pseudo, $commentaire, $article_id)
{
    $bdd = bddconnect();
    $com = $bdd->quote($commentaire);
    $username = $bdd->quote($pseudo);
    $today = date("Y-m-d H:i:s");
    $bdd->query("INSERT INTO commentaires( nom_auteur, content, date) VALUES ( $username, $com,'$today')");
    $com_id = $bdd->lastInsertId();
    $bdd->query("INSERT INTO articles_commentaires( article_id, commentaire_id) VALUES ('$article_id','$com_id')");
}

/**
 *   Récupère les commentaires pour les afficher en fonction de l'id article
 *
 *  @param int $article_id
 *
 *  @return FETCH_ASSOC
 *
 * retourne les commentaires
 **/
function getComments($article_id)
{
    $bdd = bddconnect();
    $commentaires = $bdd->query("SELECT content, nom_auteur, date FROM commentaires INNER JOIN articles_commentaires ON commentaires.id=commentaire_id WHERE article_id='$article_id'")->fetchAll(PDO::FETCH_ASSOC);
    return $commentaires;
}

/**
 * "REdimensionne" une image
 *
 * @param int $width
 *
 * @param string $cheminImage
 *
 * @return array [$largeur,$hauteur]
 **/
function resizeImage($width, $cheminImage)
{
    if (!empty($cheminImage) && !empty($width)) {
        $file = "./assets" . $cheminImage;
        $source_properties = getimagesize($file);
        $largeur = $width;
        $ratio = $largeur / $source_properties[0];
        $hauteur = $source_properties['1'] * $ratio;
        //var_dump($source_properties,$ratio,$hauteur );
        return [$largeur, $hauteur];
    }
}

/**
 *   Récupère toutes les informations de notre table categories en base SQL
 *
 *  @return FETCH_ASSOC
 *
 * retourne les catégories
 **/
function getCategories()
{
    $bdd = bddconnect();
    $categories = $bdd->query("SELECT * FROM categories")->fetchAll(PDO::FETCH_ASSOC);
    return $categories;
}

/**
 * Ajoute une nouvelle catégorie
 *
 * $flag nous permet de vérifier si la catégorie existe déjà
 *
 * si $flag est vide on fait requête SQL
 *
 * sinon message !
 *
 * @param string $nomCategorie
 *
 * @return int
 *
 * retourne l'id de la nouvelle catégorie
 **/
function setNewCategorie($nomCategorie)
{
    $bdd = bddconnect();
    $cat = $bdd->quote($nomCategorie);
    $categories = getCategories();
    $flag = "";
    foreach ($categories as $categorie) {
        $nomcat = $bdd->quote($categorie['nom_categorie']);
        var_dump($nomcat == $cat);
        if ($nomcat == $cat) {
            $flag = "trouvé";
        }
    }
    if ($flag == "") {
        $bdd->query("INSERT INTO categories (nom_categorie) VALUES ($cat)");
    } else {
        echo "La catégories existe déjà";
    }
    return $bdd->lastInsertId();
}

/**
 * Renvoi les articles qui peuplent une categorie donc l'id est mis en paramètre
 *
 * @param int $id
 *
 *  @return FETCH_ASSOC
 *
 * retourne les articles
 **/
function getArticleCategorie($id)
{
    $bdd = bddconnect();
    $articles = $bdd->query("SELECT articles.id ,titre , image ,content, created_at, nom, prenom FROM articles INNER JOIN auteurs ON auteur_id = auteurs.id WHERE articles.categorie_id='$id' ")->fetchAll(PDO::FETCH_ASSOC);
    return $articles;
}
