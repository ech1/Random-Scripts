<?php
	$foo[] = 1;		//Array( [0] => 1 )
	$bar[][] = 2;		//Array( [0] => Array( [0] => 2 ) )

	$foo = [2 	=> 'apple', 'melon'];
	$foo = ['2' 	=> 'apple', 'melon'];				    // same as above
	$foo = [2	=> 'apple', 'index 3 temporarily', '3' => 'melon']; // same as above

	$array = new SplFixedArray(3);
			//				^
	$array[0] = 1;	//				|
	$array[1] = 2;	//				|
	$array[2] = 3;	//				|
	$array[3] = 4;	//runtime exception because ----|

	$array->setSize(10);
?>
