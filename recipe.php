<?php


// require_once "connect.php";
// $sql= "SELECT * FROM recipes";
// $all_recipe = $con->query($sql);





?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devcie-width, initial-scale=2.0">
    <title>
        Recipe website 
    </title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>

</head>
<body>
  <?php

include_once 'headernav.php';




?>
   

    <!-- the alll the recipe on the website -->

    <section class="recipes">
        <h3 class="recipeTag">Recipes</h3>
        <div class="recipecontainer">

        <!-- php data fetch from the database in the recipe database -->
           
                    <a href="recipeDescription.php" class="cardnavigation"> 
                    <div class="recipecard">
                        <img src="assets/image.jpg" alt="sponge cake" class="image">
                        <div class="recipecontent">
                            <h4 class="title">
                                Sponge Cake
                            </h4>
                            <h5 class="caloriecount">
                                <img src="assets/count.png" alt="count" >
                                200kcal
                            </h5>
                            <h5 class="caloriecount">
                                <img src="assets/clock.png" alt="count">
                                35 min
                            </h5>
                        </div>
                    </div>
                </a>
    


    

        </div>
    </section> 




        
    <footer class="copyright">
        <hr>
        <p> &#169;freecipe@2023 all right reserve </p>
    </footer>
    </section>


</body>
</html>