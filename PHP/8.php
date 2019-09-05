<?php
	$foo = true;
	$bar = false;

	if($foo){
		echo "true";
	} else {
		echo "false";
	}

	$foo = -3;	// negative decimal
	$foo = 0;	// zero
	$foo = 123;	// positive decimal
	
	$bar = 0123;	// octal
	$bar = 0xAB;	// hexadecimal
	$bar = 0b1010;  // binary

	$foo2 = 1,23;	// float
	$foo2 = 10.0;	// float

	$bar2 = -INF;	// Minus Infinity ?
	$bar2 = NAN;	// Non existant ?
?>
