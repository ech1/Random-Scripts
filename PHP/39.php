<?php
	class MyClass {
		public $a = 1;
		public static $b = 2;
		const C = 3;
		public function swegTrain() { return 4;}
		public static function yosha() { return 5; }
	}
	$object = new MyClass();
	var_dump($object->a);	// int(1)
	var_dump($object::$b);	// int(2)
	var_dump($object::C);	// int(3)

	var_dump($object::swegTrain());	//int(4)
	var_dump($object::yosha());	//int(5)
	
?>
