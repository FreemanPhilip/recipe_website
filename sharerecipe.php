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

include_once "headernav.php";


?>
    <hr>


<!-- share recipe content -->
<div class="formcontent">
<div class="share"><h3>Share Recipe</h3></div>



    <form action="index.php" class="form" id="myForm"  method="post">

       <label for="Recipetitle">Recipe Title
        <input type="text" name="text" id="Recipetitle" class="Recipetitle" required>
       </label>
     <label for="selectcontent">Recipe Categories
        <select name="selectcontent" id="selectcontent" required>
            <option >Breakfast</option>
            <option >Pastries</option>
            <option >Salads</option>
            <option >Lunch</option>
            <option >Drinks</option>
            <option >Deserts</option>
          </select>
     </label> 
       <div class="wrapitem">
        <label for="text">Cooking Time
            <input type="text" name="text" Class="Calorietime" id="calorietime" required>
           </label>
           <label for="caloriecount" class="margin">Calorie Count
            <input type="number" name="text" id="caloriecount" Class="caloriecount" required>
           </label>
       </div>
       <label for="coverimage" class="cover-image">Cover image
        <input type="file" class="coverimage" required id="coverimage"> 
       </label>
       <label for="Description" class="RecipeDescription">Recipe Description
        <textarea name="Description" id="Description"  placeholder="Text goes here" required></textarea>
       </label>
       <button type="submit"  class="send" id="submit">Send</button>
      
    </form>
    
</div>

<footer class="copyright">
    <hr>
    <p> &#169;freecipe@2023 all right reserve </p>
</footer>



  <script src="script.js"></script>

</body>
</html>