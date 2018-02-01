<?php include "includes/header.php"?>

<?php
if (isset($_POST['searchKey'])) {
    $searchKey = $_POST['searchKey'];
}
 else {
     echo "Your result not found.";
}
$db = new MealFetcher();
$meals = $db->SearchMeal($searchKey);
if ($meals != NULL) {
    $result = "";
}
 else {
    $result = "&nbsp;&nbsp;&nbsp;&nbsp;We're sorry, we did not find any search results for << ".$searchKey." >>.";
}
?>
<html>
    <body>
        <div class="container">
            <div class="panel panel-default">
                    <div class="panel-heading">Search Result</div>
                    <div class="panel-body">
                        <div class="row">
                            <?php
                            echo $result;
                            foreach ($meals as $key => $value) {
                                ?>
                            <?php
                                ?>
                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <a href="<?php echo "showDetails.php?mealId=".$value["Meal_ID"] ?>" >
                                        <img src="./images/<?php echo $db->MealPic($value["Meal_Pic_ID"])["Pic_Name"] ?>" alt="Lights" style="width:100%; height:250px">                                         
                                                    <div class="caption">
                                                <p><?php echo $value["Meal_Name"] ?></p>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            <?php } ?>                   
                        </div>
                    </div>
            </div>
        </div>
    </body>
    <?php //include "includes/footer.php" ?>
</html>







