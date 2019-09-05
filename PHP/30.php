<?php
	define("GOOD", false);
	if(defined("GOOD")){
		print "GOOD is defined";
		if(GOOD){
			print "GOOD is true" // wont be printed cuz "GOOD" is false!
		}
	}
	
	if(!defined("AWESOME")){
		define("AWESOME",true); // "AWESOME" wasnt defined, so we defined it.
	}
	
?>
