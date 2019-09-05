<?php
	$username 	= 'Hadibut';
	$email	 	= 'had@nowhere.com';
	$vars		= compact('username', 'email');

	$fruits = [ 'banana', 'apple'];
	$foo = in_array('banana', $fruits);	// true
	$bar = in_array('orange', $fruits);	// false

	$userdb = ['Sandra', 'Stefan', 'Michael'];
	$pos = array_search('Stefan', $userdb);
	if($pos !== false){
		echo "Stefan found at $pos";
	}


?>
