<?php
	$my_string = 'nothing parsed, except escap\'d apostrophe or backslash. $foo \n';
	var_dump($my_string); // the new line is not printed, it prints \n literally
	
	$variable = "Testing!";
	$variable = [ "Testing?", [ "Failure", "Success" ] ];
	
	$my_string = "Variables and escape charcaters are parsed:\n\n";
	var_dump($my_string); // the 2 new lines are printed

	$my_string = "There are limits: $variable1\n\n$variable2[0]\n\n";
	var_dump($my_string); // prints out the new lines, and not variable1 and 2
			      // cuz not declared
?>
