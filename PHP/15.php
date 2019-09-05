<?php
	$amount_of_log_calls = 0;

	function log_message($message){
		global $amount_of_log_calls;
		$amount_of_log_calls += 1;
		echo $message;
	}

	log_message("First log message!");
	echo $amount_of_log_calls;

	log_message("Second log message!");
	echo $amount_of_log_calls;

	function log_message($message){
		$GLOBALS['amount_of_log_calls'] += 1;
		echo $message;
	}
	
?>
