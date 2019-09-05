<?php
	$myGlobal = "global";
	
	function test(){
		$myLocal = "local";
		var_dump($myLocal);
		var_dump($_GLOBALS["myGlobal"]);
	}
	test();
	var_dump($myLocal);
	var_dump($myGlobal);

	// out:
	//  string 'local' (length = 5)
	//  string 'global'(length = 6)
	//  null
	//  string 'global'(length = 6)
?>
