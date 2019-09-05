<?php
	$foo = new stdClass();
	
	$foo->bar = "baz"
	echo $foo->bar;		//outputs 'baz'

	$quux = (object) ["foo" => "bar"];
	echo $quux->foo;	// outputs 'bar'
?>
