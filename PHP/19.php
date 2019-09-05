<?php
	$a = 10;

	function foo(){
		echo $GLOBALS['a'];
	}

	if(isset($_REQUEST['user'])){
		echo $_REQUEST['user'];
	}

	if($_FILES['picture']){
		echo "<pre>";
		print_r($_FILES['picture']);
		echo "</pre>";
	}

	Array
	(
		[picture] => Array
		(
			[0] => Array
			(
				[name]		=> 400.png
				[type]		=> image/png
				[tmp_name]	=> /tmp/php5Wx0aJ
				[error]		=> 0
				[size]		=> 15726
			)
		)
	)
?>
