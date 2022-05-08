<?php
   try{
      $pdo=new PDO("mysql:host=localhost;dbname=gestion d etudiant","root","");
      
   }
   catch(PDOException $e){
      echo $e->getMessage();
   }
?>