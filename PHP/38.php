<?php
	$name = $_POST['name'] ?? 'nobody';
	$name = isset($_POST['name']) ? $_POST['name'] : 'nobody';

	if(isset($_GET['name'])){
		$name = $_GET['name'];
	} elseif(isset($_POST['name'])){
		$name = $_POST['name'];
	} else {
		$name = 'nobody';
	}

	// Integers
	print( 1<=>1 ); // 0 equal
	print( 1<=>2 ); //-1 smaller
	print( 2<=>1 ); // 1 greater
	echo "\n";

	// Floats
	print( 1.5<=>1.5 ); // 0 equal
	print( 1.5<=>2.5 ); //-1 smaller
	print( 2.5<=>1.5 ); // 1 greater
	echo "\n";

	// Strings
	print("a"<=>"a"); // 0 equal
	print("a"<=>"b"); //-1 smaller
	print("b"<=>"a"); // 1 greater
	echo "\n";
?>
