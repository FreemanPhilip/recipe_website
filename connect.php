<?php

$servername = "localhost";   // Change this to your database server name
$username = "root";     // Change this to your database username
$password = "";     // Change this to your database password
$dbname = "recipedatabase";  // Change this to your database name

$con = mysqli_connect($servername, 
$username, $password, $dbname);

 // Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);

}
echo "Connected successfully";



// Create connection -->





$jsonData = file_get_contents('recipes.json');
$recipes = json_decode($jsonData,true );

$push = $con->prepare(
    "INSERT INTO recipes(catID, name, url, description, method) VALUE(?,?,?,?,?)"
);

$push->bind_param("issss", $catID, $name, $url, $description, $method );

$inserted_rows=0;
foreach($recipes as $recipes){

    $catID = $recipes["catID"];
    $name = $name["name"];
    $url = $url["url"];
    $description = $description["description"];
    $method = $method["method"];



    $push->execute();
    $inserted_rows ++;
}

if (count($recipes) == $inserted_rows){
    echo "success";
}
else{
    echo "error";
}
?>




