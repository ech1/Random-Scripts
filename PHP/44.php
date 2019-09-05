<?php
	class MyClass{
	}
	$o1 = new MyClass();
	$o2 = new MyClass();
	$name= 'MyClass';

	$a = $o1 instanceof MyClass;
	$a = $o1 instanceof $name;
	$a = $o1 instanceof $o2;
	
	$b = 'b';
	$a = $b instanceof MyClass; // false ($b is not an object)
?>
