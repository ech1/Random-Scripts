<?php
	class Logger {
		const LEVEL_INFO = 1;
		const LEVEL_WARNING = 2;
		const LEVEL_ERROR = 3;

		public function log($message, $level = self::LEVEL_INFO){
			echo "Message level " . $level . ": " . $message . "\n";
		}

	}
	$logger = new Logger();
	$logger->log("Info");					// using default value
	$logger->log("Warning", $logger::LEVEL_WARNING); 	// using var
	$logger->log("Error", Logger::LEVEL_ERROR);		// using class
?>
