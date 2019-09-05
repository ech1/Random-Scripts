<?php
	$arr = array(1, 2, 3, 4, 5);

	foreach($arr as &$num) {
		$num++;
	}

	print_r($arr);
	unset($arr);

	$var = 5;
	
	function add(&$var) {
		$var++;
	}

	add($var);
	echo $var;


?>
