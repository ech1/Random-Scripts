<?php
	echo "Kill Niggers \n \n \n";
	$foo = &$bar;
	$foo = 'hi';
	$bar = array(1, 2);
	$array = array(&$foo, &$bar[0]);

	function incrementArray(&$arr) {
		foreach ($arr as &$val){
			$val++;
		}
	}

	function &getArray() {
		static $arr = [1, 2, 3];
		return $arr;
	}

	incrementArray(getArray());
	var_dump(getArray());		// prints array [2,3,4]
?>
