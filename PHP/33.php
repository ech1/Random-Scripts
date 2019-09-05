<?php
	echo "We are in the file:", __FILE__ , "\n";
	echo "Our script is in :",  __DIR__  , "\n";
	echo "Our script is in :", dirname(__FILE__) , "\n";

	// this is a comment
	
	# this is also a comment
	
	/* Multi 
	   Line
	   Comment
	   Wow
	*/

	// Loose comparaisons
	var_dump(1 == 1); 	// true
	var_dump(1 == "1"); 	// true
	var_dump(1 == true);    // true
	var_dump(0 == false);   // true

	echo "\n \n \n"; 	// 3 new lines ( \n )
	echo "--------";	// -----------
	echo "\n \n \n";	// 3 new lines
	
	// Strict comparaisons
	var_dump(1 === 1); 	// true
	var_dump(1 === "1");	// false
	var_dump(1 === true);	// false
	var_dump(0 === false);	// false
?>
