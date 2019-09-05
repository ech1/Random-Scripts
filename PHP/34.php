<?php
	var_dump((bool) "1");		// true
	var_dump(boolval("1"));		// true
	var_dump( (string) true);	// string(1) "1"
	var_dump( (string) false);	// string(0) ""

	var_dump( (int) true);		// int(1)
	var_dump( (int) false);		// int(0)
	
	var_dump((bool) -2);		//true
	var_dump((bool) "foo");		// true

	var_dump((bool) array(12));	// true
	var_dump((bool) array());	// false

	var_dump((bool) "false"); 	// true apparently magic
	
?>
