<?php
	function parent(&$var) {
		echo $var;
		$var = "updated";
	}

	function &child(){
		static $a = "test";
		return $a;
	}

	parent(child()); // returns "test"
	parent(child()); // returns "updated"

	function &myFunction(){
		static $a  = 'foo';
		return $a;
	}

	$bar = &myFunction();
	$bar = "updated"
	echo myFunction();

?>
