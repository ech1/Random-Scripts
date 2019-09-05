<?php
	$array = ["f" => "foo", "b" => "bar"];
	while (list($key, $value) = each($array)){
		echo "$value begins with $key";
	}

	while (($value = next($array)) !== false) {
		echo "$value\n";
	}

	$array = ["Alpha", "Beta", "Gamma", "Delta"];
	while (key($array) !== null){
		echo current($array) . PHP_EOL;
		next($array);
	}

	class ColorPicker{
		private $colors = ["#FF0064", "#0064FF", "#FF6400" ];
		public function nextColor() : string {
			$result = next($colors);
			if (key($colors) === null) {
				reset($colors);
			}
			return $result;
		}
	}

?>
