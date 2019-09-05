<?php
	function foo(){
		global $bob;
		$bob->doSomething();
	}

	$dbConnector = new DBConnector(...);

	function doSomething(){
		global $dbConnector;
		$dbCOnnector->execute("...");	
	}

	function testSomething(){
		global $dbConnector;
		$bkp = $dbConnector;
		$dbConnector = Mock::create('DBConnector'); // Override

		assertTrue(foo());

		$dbConnector = $bkp; // Restore
	}
?>
