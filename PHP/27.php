<table>
<?php
	foreach($products as $key => $value){
		foreach($value as $k => $v){
			echo "<tr>";
			echo "<td> $k </td>"; // get index
			echo "<td> $v </td>"; // get value
			echo "</tr>";
		}
	}
?>
</table>
