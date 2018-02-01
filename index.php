<?php include "includes/header.php" ?>
<?php //include_once "includes/database.php" ?>





<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="./images/greenSalad.jpg" alt="Image">
            <div class="carousel-caption">
                <h3>You Can Find Your Recipe</h3>
                <p>...</p>
            </div>      
        </div>

        <div class="item">
            <img src="./images/sushi.jpg" alt="Image">
            <div class="carousel-caption">
                <h3>You Can Find Your Recipe</h3>
                <p>...</p>
            </div>      
        </div>

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div class="container text-center">    
    <h3>SPECIAL TODY</h3><br>
    <div class="row">
        <div class="col-sm-4">
            <img src="./images/3.jpg" class="img-responsive" style="width:100%" alt="Image">
            <p>NEW DELICIOUS APPETIZER</p>
        </div>
        <div class="col-sm-4"> 
            <img src="./images/4.jpg" class="img-responsive" style="width:100%" alt="Image">
            <p>Unusual CAKE</p>    
        </div>
        <div class="col-sm-4">
            <img src="./images/5.jpg" class="img-responsive" style="width:100%" alt="Image">
            <p>SEA FOOD</p>   
        </div>
    </div>
</div><br>

<?php include "includes/footer.php" ?>
</body>
</html>
