<?php
	$map = [
		'foo' 	=> 1,
		'bar'	=> null,
		'foobar'=> '',
	];

	array_key_exists('foo', $map);		// true
	isset($map['foo']);			// true
	!empty($map['foo']);			// true

	array_key_exists('bar', $map);		// true
	isset($map['bar']);			// false
	!empty($map['bar']);			// false

	$ord = ['a', 'b'];
	array_key_exists(0, $ord); 		// true
	array_key_exists(2, $ord);		// false

?>
