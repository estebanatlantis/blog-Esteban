<!DOCTYPE html>
<html>

    <head>
         <meta charset="utf-8">
        <link rel="stylesheet" href="style3.css">
    </head>

    <body>
    <header> 
        <ul>
                <li><a href="#">Accueil</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Mon compte</a></li>   
        
        </ul>
    </header>
    <div id="titre">Publier un article ou <a href=" afficher.php">Cliquer ici</a> pour les afficher par catégorie
        </div>

     <div id="centre" >
     <form method="post" action="" >
         <label >Auteur</label><input type="text" name="auteur"><br>
        <label >Article</label><textarea type="text" name="article" rows="20" cols="40"> </textarea><br>
      <label>Catégorie</label>
         <select name="cat" >
            <option value="1">Jeux vidéos</option>
            <option value="3"> Custom</option>
            <option value="4">astuces</option>

         </select> <br>
         <label for="pseudo">&nbsp; </label><button>Publier</button>

</form>
   
   <h2>Choix catégorie</h2>
        <form method="get" action="" >
        
      <label>Catégorie</label>
         <select name="choix_cat" >
            <option value="1">Jeux vidéos</option>
            <option value="3"> Custom</option>
            <option value="4">astuces</option>

         </select> <br>
         <button name="afficher">Afficher</button>

</form>

   </div>

    <?php
        try
       {
      $connexion = new PDO("mysql:host=localhost;dbname=blog", 'root', '');
           $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
       }

      catch(Exception $e) {
      echo "Error: " . $e->getMessage();  }

        if(isset($_POST['auteur']))  htmlspecialchars ($auteur= $_POST["auteur"]);
         else $auteur="";

        if(isset($_POST['article']))  htmlspecialchars ($article=$_POST["article"]);


        else $article="";

         if(isset($_POST['cat']))  htmlspecialchars ($cat=$_POST["cat"]);
         else $cat="";

         if( !empty($auteur) && !empty($article) && !empty($cat)  )
         {

        
           $req = $connexion->prepare("SELECT id_cat FROM categorie WHERE nom_cat = ?");
            $req->execute(array($_POST['cat']));

         $row = $req->fetch() ; echo  $row["id_cat"];

             $req1 = $connexion->prepare('SELECT id_auteur FROM auteur WHERE pseudo = ?');
          $req1->execute(array($_POST['auteur']));
             
             if($req1->rowCount() > 0) {
                 while($infos = $req1->fetch()){
                     $id_auteur = $infos["id_auteur"];
                 }
                 
             }
             else {
                 $req1 = $connexion->prepare('INSERT INTO auteur ( pseudo) VALUES( ?)');
                 $req1->execute(array($_POST['auteur']));
                 $id_auteur = $connexion->lastInsertId();
             }

             

         ?> <div> <?php $req2 = $connexion->prepare('INSERT INTO article ( nom_article, id_auteur,id_categorie) VALUES(?, ?, ?)');
             $req2->execute(array($_POST['article'],$id_auteur,$_POST['cat']));

            $id_data = $connexion->lastInsertId();

         

               $req4 = $connexion->query('SELECT nom_article FROM article ORDER BY id_article DESC LIMIT 0, 10');



              ?>
    

    

        <div id="rose">
   <?php

           while($row4 = $req4->fetch())
           {
            ?> <div id="text"> <?php echo  $row4["nom_article"]."<br>","<br>"; ?> </div> <?php
           }

         }
        
           ?>
           

        </div>
        <footer>
        <h3 id="paul">©Copyright 2017 Tous droits réserver  </h1>   
            <p>Pouet</p>
            <p>Pouet</p>
            <p>Pouet</p>
        </footer>
       </body>
     </html>
