<?php
	class Trick {
		public function doit(){
			echo __FUNCTION__;
		}
		public function doitagain(){
			echo __METHOD;
		}
	}
	
	$obj = new Trick();
	$obj->doit();
	$obj->doitagain();
?>
