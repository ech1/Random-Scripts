<?php
	$integer = 1337;
	$array = [1337, 42];

	is_array($integer);		// false
	is_array($array);		// true

	function foo (array $array) { /* $array is an array */ }

	gettype($integer) === 'array' 	// false
	gettype($array)   === 'array'	// true

?>
