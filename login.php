<?php
//Connectivity
$server = "localhost";
$username = "root";
$password = "";
$db = "darshil_db";
//$port = '3306';

//This function will connect our web page to Database...
$conn = mysqli_connect($server, $username, $password, $db);
if (!$conn) {
    echo mysqli_connect_error();
    die("<h2>Connection not succesfull...</h2><br>");
} else {
    echo "<h2>Connection Succesfull...</h2><br>";
}
?>

<?php
// Inserting the records to Database
$user = $_POST['username'];
$pass = $_POST['pass'];

// Executing the query
// This query tries to find the user is vaild or not. And It will insert into member_login table.
$sql = mysqli_query($conn, "INSERT INTO member_login(username,pass) 
        SELECT f_nm,password
        FROM member_data
        WHERE f_nm='$user'AND password='$pass'");
// If it is >0, it means the user was not found or verfied.
if ($sql && mysqli_affected_rows($conn)>0) {
    echo "<h4>Login successfull !</h4>";
    header('Location:HOME.html'); //Redirect after success
    exit();
} else {
    //if 0 rows were affected, then the username or pass was incorrect
    echo "<h4>Invalid Username or Password</h4><br>";
}
?>
<!-- if ($sql) {
    echo "<h4>Login successfull !</h4>";
    header('Location: HOME.html'); // Redirect after success
    exit(); // Stop further execution
} else {
    echo "<h4>Record error</h4><br>";
} -->
