<?php
include "includes/header.php";
//include "./Classes/Favorite.php";
?>
<html>
    <body>
        <div class="container">
            <div class="panel panel-default">
                <?php
                

                $test = " ";
                //session_start();
                $db = new MealFetcher();
                $meals = $db->recipeUserType($_SESSION['userid']);
                $favorError = "";
                //if (isset($_POST['Delete'])) {
                    
                    
                    //$test =  $recipeID." , ".$userID;
                    //$favo->Delete($recipeID, $userID);  
                    //$favo->Delete(9, 8);                 

                    //header("Location: manageFavorite.php?mealId=".$recipeID);
                        //exit();
                //}
                ?>
                <div class="panel-heading"> <h3>My Favorite Meals</h3></div>
                    <div class="row">
                            <?php
                            foreach ($meals as $key => $value) {
                                ?>
                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <a href="<?php echo "showDetails.php?mealId=" . $value["Meal_ID"] . "&chk=1" ?>" >
                                            <img src="./images/<?php echo $db->MealPic($value["Meal_Pic_ID"])["Pic_Name"] ?>" alt="Lights" style="width:100%; height:200px">                                         
                                            <div class="caption">
                                                <p><?php echo $value["Meal_Name"] ?></p>
                                                <p>Preparation Time: <?php echo $value["Prepration_time"] ?></p>
                                                <p>Cooking Time: <?php echo $value["Cooking_time"] ?></p>
                                                <img src="./images/rating/<?php
                                                                switch ($value["Rating"]) {
                                                                    case 5:
                                                                        echo '5star.png';
                                                                        break;
                                                                    case 4:
                                                                        echo '4star.png';
                                                                        break;
                                                                    case 3:
                                                                        echo '3star.png';
                                                                        break;
                                                                    case 2:
                                                                        echo '2star.png';
                                                                        break;
                                                                    case 1:
                                                                        echo '1star.png';
                                                                        break;

                                                                    default:
                                                                        echo '0star.png';
                                                                        break;
                                                                }
                                                ?>" alt="Lights" style="width:90px; height:30px">
                                            </div>
                                        </a>
                                        <a href="<?php echo "manageFavorite.php?recipeID=".$value["Recipe_ID"] ?>" >
                                            <input class = "btn btn-primary" type="submit" value='Delete' >
                                        </a>
                                    </div>
                                </div>
                            <?php } ?>                   
                        </div>
                    <div class="panel-body">
                        <div class="row">
                            <?php
                            //var_dump( $_SESSION['userid']);
                           //echo $value["Pic_Name"];
                           //echo $value["Prepration_time"];
                            ?>                   
                        </div>
                    </div>
                    <?php
                //}
                ?>
            </div>
        </div>
    </body>
    <?php include "includes/footer.php" ?>
</html>









