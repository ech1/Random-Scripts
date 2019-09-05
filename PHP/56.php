<?php
	$people = ['Tim', 'Tony', 'Turanga'];
	$foods =  ['chicken', 'beef', 'slurm'];

	array_map(function($person, $food) {
		return "$person likes $food \n";
	}, $people, $foods);

	assert(count($people) === count($foods));
	for ($i = 0; $i < count($people); $i++){
		echo "$people[$i] likes $foods[$i]\n";
	}

	foreach ($people as $index => $person) {
		$food = $foods[$index];
		echo "$person likes $food\n";
	}

	$combinedArray = array_combine($people, $foods);
	foreach ($combinedArray as $person => $meal) {
		echo "$person likes $meal\n";
	}

	$colors = ['red', 'yellow', 'blue', 'green'];
	for ($i = count($colors) - 1; $i >= 0; $i--) {
		echo ' I am the color ' . $colors[$i] . '<br>' ;
	}

	$array = ["alpha" , "beta", "gamma", "delta", "epsilon"];
	for ($i = 0; $i < count($array); $i++){
		echo $array[$i], PHP_EOL;
		if ($array[$i] === "gamma") {
			$array[$i] = "zeta";
			$i -= 2;
		} elseif ($array[$i] === "zeta") {
			$i++;
		}
	}
?>
