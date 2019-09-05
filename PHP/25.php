<?php
	$name = 'Joel';
	echo '<p>Hello ' , $name , ', Nice to meet you. </p>';
	echo "\n";

	$itemCount = 2;
	echo 'You have ordered ', $itemCount,' item', $itemCount === 1 ? '' : 's';
	echo "\n";
	
	$name = 'Not Jeff';
	printf("Hello %s, How's it going ?",$name);
	printf("\n");	// prints a line

	$greeting = sprintf("Hello %s, How' it going? you fucking nigger!", $name);
	echo $greeting;
	echo "\n"; // jumps a line
	echo '\n'; // literally prints \n
?>
