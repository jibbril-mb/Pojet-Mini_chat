<?php

    try{
        $bdd = new PDO('mysql:host=localhost;dbname=minichat', 'djiby', 'djibybd');
    }
     catch(Exception $e){
        die('Erreur:' .$e->getMessage());
    }

    $requete = $bdd->prepare('INSERT INTO baseminichat (pseudo, message) VALUES(?,?)');
    $requete->execute(array(
        $_POST['pseudo'],
        $_POST['message']
    ));
header('Location: min.php');

