<?php
    //session_start();
    include("connection/connection.php");
    
    $cred = $_POST["credentials"];
    $name = $_POST["name"];
    $lname = $_POST["lname"];
    $mail = $_POST["mail"];
    $password = $_POST["password"];

    echo $lname;

    $query_insert = "INSERT INTO users ('user_identificator',
    'user_name','user_lname','user_email','user_password') VALUES('$cred', 
        '$name', '$lname', '$mail', '$password')";
    
    $mysql_insert = mysqli_query($conn, $query_insert);
    

    header("Location: pages/login.php");

?>