<?php
	$variableName = 'foo';
	$foo = 'bar';

	echo $foo;
	echo ${$variableName};
	echo $$variableName;

	$variableName  = 'foo';
	$$variableName = 'bar';

	echo $foo;
	echo $$variableName;
	echo ${$variableName};
?>
