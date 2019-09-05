<?php
	$foo = array(1, 2, 3); 		// array of integers
	$bar = ["A" , true, 123 => 5];	// Short array syntax
	
	echo $bar[0];		// returns "A"
	echo $bar[1];		// returns true
	echo $bar[123];		// returns 5 (yeah wtf)
	echo $bar[1234];	// returns null

	$array = array();
	$array["foo"] = "bar";
	$array["baz"] = "quux";
	$array[42] = "hello";

	echo $array["foo"];	// "bar"
	echo $array["bar"];	// "quux"
	echo $array[42];	// "hello"

	$foo = "Terry Davis";
	echo $foo[0];	// outputs T
	echo $foo[1];	// outputs e
	echo $foo[7];	// outputs D
?>
