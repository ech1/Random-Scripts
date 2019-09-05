<?php

	interface MyInterface {
	}

	class MySuperClass implements MyInterface{
	}

	class MySubClass extends MySuperClass{
	}
	
	$o = new MySubClass();
	//below, $a gets the "true" value
	$a = $o instanceof MySubClass;
	$a = $o instanceof MySuperClass;
	$a = $o instanceof MyInterface;
	
?>
