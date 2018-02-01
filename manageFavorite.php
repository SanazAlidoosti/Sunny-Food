<?php
include "./Classes/Favorite.php";
include './Classes/ClassDatabase.php';
if (isset($_GET['recipeID']) && !empty($_GET['recipeID'])) {
        $recipeID = $_GET['recipeID'];
        session_start();
        $favo = new Favorite();                
        $userID = $_SESSION['userid'];
        $favo->Delete($recipeID, $userID);
        echo  $_SESSION['userid'], $recipeID;              
header("Location: myRecipes.php");
exit();

}


