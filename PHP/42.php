<?php
	$a = 4;		// int
	$b = '4';	// char
	if($a != $b){
		echo 'a and b are not equal'; //not printed
	}
	if($a !== $b){
		echo 'a and b are not IDENTICAL \n'; // doesnt new line
		echo "\n";			     // does new line
	}
?>
