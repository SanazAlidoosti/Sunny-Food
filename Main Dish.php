<?php
include "includes/header.php";
?>

<html>
    <body>
        <div class="container">
            <div class="panel panel-default">
                <?php
                //$subType = $_POST();
                $db = new MealFetcher();
                $meals = $db->MealSubType(1);
                foreach ($meals as $key => $value) {
                    ?>
                    <div class="panel-heading"><?php echo $value["Basic_Meal_Category"]; ?></div>

                    <div class="panel-body">
                        <div class="row">
                            <?php
                            $array = $db->Meal($value["Category_ID"]);
                            foreach ($array as $key => $value) {
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
                    <?php
                }
                ?>
            </div>
        </div>
    </body>
    <?php include "includes/footer.php" ?>
</html>

