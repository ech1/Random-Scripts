<?php
	$myArray = array();
	$sizeOfMyArray = 5;
	$fill = 'placeholder';

	for ($i = 0; $i < $sizeOfMyArray; $i++){
		$myArray[] = $fill;
	}

	$a = array_fill(5,6,  'banana');
	$b = array_fill(-2,4, 'pear'  );

	$array  = [];
	$array2 = range(1,4);

	for ($i = 1; $i <= 4; $i++){
		$array[] = $i;
	}

	print_r($array);
	print_r($array2);
?>
