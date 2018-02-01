<?php
include "includes/header.php";
include "./Classes/Favorite.php";
?>
<html>
    <body>
        <div class="container-fluid">
            <?php
            if (isset($_GET['mealId']) && !empty($_GET['mealId'])) {
                $mealId = $_GET['mealId'];
                $checkKey = ""; 
                if (isset($_GET['chk']) && !empty($_GET['chk']) && $_GET['chk'] == 1) {
                     $checkKey = $_GET['chk'];
                    }
                $db = new MealFetcher();
                $mealDetail = $db->MealDetails($mealId);
                $Recipe_ID = $mealDetail["Recipe_ID"];
                $recipeDetail = $db->RecipeDetails($Recipe_ID);
            }
            else {
                header("Location: index.php");
                exit;
            }
            ?>
            <?php
            $favorError = "";
            if (isset($_POST['AddMyFavorite'])) {
                if (isset($_SESSION["userid"])) {
                    $recipes_user = new Favorite();
                    $today = date("Y/m/d");
                    $recipes_user->Create($Recipe_ID, $_SESSION["userid"], 3, $today);
                    header("Location: myRecipes.php");
                    exit(); 
                    }
                else {
                    $favorError = "You have to login"." <a href=Login.php >Login</a>";
                     }  
                }
            ?>
            <br>
            <div class="panel panel-default">
                <div class="panel-heading">
<?php echo $mealDetail["Meal_Name"]; ?></div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-4">  
                            <div class="thumbnail">
                                <img src="./images/<?php echo $db->MealPic($mealDetail["Meal_Pic_ID"])["Pic_Name"] ?>" alt="Lights" style="width:800px; height:250px">
                            </div>
                        </div>
                        <div class="col-md-8"  ><p>PREPARATION TIME: <?php echo $recipeDetail["Prepration_time"] . " " ?>MIN </p><br><p>COOKING TIME: <?php echo $recipeDetail["Cooking_time"] . " " ?>MIN </p><br><p>SERVING: <?php echo $recipeDetail["Serving"] . " " ?> </p><br>
                            <form action="#" method="post">
                                <div class="form-group">
                                    <br/>                                   
                                    <input class = "btn btn-primary" type="<?php $tmp = ($checkKey) ?  'hidden' :  'submit'; echo $tmp ?>" name="AddMyFavorite" value='Add My Favorite'> 
                                     <?php echo $favorError ?>
                                    <br/>
                                </div>
                                
                            </form>
                           
                            <img src="./images/rating/<?php
switch ($recipeDetail["Rating"]) {
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
                    </div>
                </div>
                <div class="panel-heading">INGREDIENTS</div>
                <div class="panel-body">
<?php
$array = $db->MealMaterials($recipeDetail["Recipe_ID"]);
foreach ($array as $key => $value) {
    ?>
                        <div class="row">
                            <ul style="list-style-type:square">
                                <li>
                        <?php echo $value["Count"] . " " . $value["Metric"] . " " . $value["Material_Name"] ?>
                                </li>

                            </ul>

                        </div>
<?php } ?>
                </div>
                <div class="panel-heading">PREPARATION</div>
                <div class="panel-body">

<?php $recipe = explode('|', $recipeDetail["Description"]); ?>
<?php foreach ($recipe as $value) {
    ?>
                        <div class="row">
                            <ul style="list-style-type:none">
                                <li>
                        <?php echo $value ?>
                                </li>

                            </ul>
                        </div>
<?php } ?>
                </div>
            </div>
        </div>
    </body>
<?php include "includes/footer.php" ?>
</html>

