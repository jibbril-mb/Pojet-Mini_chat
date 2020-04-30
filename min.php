<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mini-Chat</title>
    <style>
        form{
            text-align : center;
            padding-top : 5px;
        }
        h1{
            text-align: center;
            text-decoration: underline;
            size: 25px;
            color: blue;
        }
        #lien{
            text-align: right;
        }
    </style>
</head>
<body>
        <h1><strong> Mini-chat</strong></h1>
    <form action="mini_post.php" method="post">
        <p>
            <label for="pseudo">Pseudo :</label>
            <input type="text" name="pseudo" id="pseudo"><br><br>
            <label for="message">Message :</label><br>
            <textarea name="message" id="message" cols="40" rows="6"></textarea><br><br>
            <input type="submit" value="Envoyer">
        </p>
    </form>
        <div id="lien">
            <a href="min.php">Cliquez ici pour <strong>actualiser</strong> la page! </a>
        </div>
</body>
</html>

<?php
        //je teste la présence d'erreur à travers la fonction try{}
    try{
        //connexion à la base de données
        $bdd = new PDO('mysql:host=localhost;dbname=minichat', 'djiby', 'djibybd');
    }
        //En cas d'erreur PHP arréte l'exécution du code ,et envoie un message , 
     catch(Exception $e){
        die('Erreur:' .$e->getMessage());
    }
        //Récupération des 10 derniers messages
        $reponse = $bdd->query('SELECT pseudo,message FROM baseminichat ORDER BY id DESC LIMIT 0,10');

        /*$reponse = $bdd->query('SELECT pseudo, message, date_de_la_creation FROM minichat WHERE date >= '2020-04-20
        00:00:00' AND date <= '2020-04-18 00:00:00');*/

        //// Affichage de chaque message (toutes les données sont protégées par htmlspecialchars)
        while ($donnees = $reponse->fetch()){
            echo "<strong>". htmlspecialchars($donnees['pseudo']) ."</strong>" .'<br>'; 
            echo htmlspecialchars($donnees['message']) .'<br> <br>';
        }
        $reponse->closeCursor();
?>

