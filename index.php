<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devcie-width, initial-scale=2.0">
    <title>
        Recipe website 
    </title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>

</head>
<body>
   <?php

include_once 'headernav.php';

?>







    <!-- content of the website -->
    <div class="content">
            <h3>Welcome to 
                Recipe Store</h3>
            <p> Cook. Share. Savor.</p>
           <div id="buttoncontent">
             <button type="button" class="button">
                Find a recipe
                <i class="fa fa-arrow-right" aria-hidden="true"></i>

                <!-- <i class="fa fa-align-item"></i> -->
            </button>
        </div>
       
        
        <div id="results">
            
        </div>

    </div>
   
    
  </div>
  <script src="script.js"></script>
</body>




</html>