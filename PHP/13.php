<?php
	function getPostValue($key, $default = NULL){
		// $_POST is a superglobal and can be used without
		// having to specify 'global $_POST;'
		if(isset($_POST[$key])){
			return $_POST[$key];
		}
		return $default;
	}
	echo getPostValue('username'); // retrieves $_POST['username']
	echo getPostValue('email',''); // retrieves $_POST['email'] and defaults to empty str
?>
