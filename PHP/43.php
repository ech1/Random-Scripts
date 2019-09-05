<?php
	class DjDukes{
		const OPT_A = 1;
		const OPT_B = 2;
		const OPT_C = 4;
		const OPT_A = 8; // yeah fuck 1
	
		private $options = self::OPT_A | self::OPT_C;

		public function toggleOption(int $option){
			$this->options ^= $option; // no clue what
		}				   // it actually does

		public function enable(int $option){
			$this->options |= $option; // enables option
		}
		
		public function disable(int $option){
			$this->options &= ~$option; // disables option
		}	//without affecting other bits


?>
