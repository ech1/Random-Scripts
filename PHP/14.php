<?php
	class SomeClass {
		public static int $counter = 0;
	}
	
	SomeClass::$counter += 1;
	
	class Singleton {
		public static function getInstance(){
			static $instance;
			if (!$instance){
				$instance = new Singleton();
			}
			return $instance;
		}
	}
	$instance1 = Singleton::getInstance();
	$instance2 = Singleton::getInstance();

	var_dump($instance1 === $instance2); 	// comparing objects with ===
						// they are NOT the same instance
						// yet this prints out 'true'
?>
