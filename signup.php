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
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$email = $_POST['email'];
$num = $_POST['phone'];
$age = $_POST['age'];
$gender = $_POST['gender'];
$plan = $_POST['membership'];
$pay = $_POST['payment'];
$password = $_POST['password'];
$cn_pass = $_POST['confirm'];

if ( $cn_pass!== $password) {
    die("Error: Passwords do not match!");
}
// Executing the query
$sql = mysqli_query($conn, "INSERT INTO member_data(f_nm,l_nm,email,pho_num,
age,gender,m_plan,payment,password,cn_pass) VALUES
('$fname','$lname','$email','$num','$age',
'$gender','$plan','$pay','$password','$cn_pass')");
if ($sql) {
    echo "<h4>Record saved successfully!</h4>";
    header('Location: HOME.html'); // Redirect after success
    exit(); // Stop further execution
} else {
    echo "<h4>Record error</h4><br>";
}
// echo "<h4>The affected rows : " . mysqli_affected_rows($conn) . "</h4><br>";
?>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if the 'gender' field is set and not empty
    if (isset($_POST['gender']) && !empty($_POST['gender'])) {
        $gender = $_POST['gender'];

        // Validate the input against expected values
        $allowed_genders = ['Male', 'Female'];
        if (in_array($gender, $allowed_genders)) {
            // Gender is valid, you can now use $gender
            echo "Selected gender: " . htmlspecialchars($gender);
            // Example: Store in a database, perform other actions
        } else {
            echo "Invalid gender selection.";
        }
    } else {
        echo "Gender selection is required.";
    }
}
?>