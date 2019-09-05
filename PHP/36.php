<?php
	$bool = true;
	var_dump($bool);	//bool(true)
	
	$int = (int) true;
	var_dump($int); 	//int(1)

	$string = (string) true;
	var_dump($string);	//string(1) "1"

	$string = (string) false;
	var_dump($string);	//string(0) ""
	
	$array = ['x' => 'y'];
	var_dump((object) $array);	//something nasty on 4 lines :problem:

	$object = new stdClass();
	$object->x = 'y';
	var_dump((unset)$string);	// NULL

	
?>
