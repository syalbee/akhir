<?php
	$servername = "localhost";
	$database = "sistemskripsi_db";
	$username = "root";
	$password = "";
	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $database);
	// Check connection
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}

// echo "test";
?>