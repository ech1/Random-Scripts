<form method = "POST" enctype="multipart/form-data">
	<input type="file"	name="MyVar"	/>
	<input type="submit"	name="Submit"	/>
</form>

<?php
	if($_FILES["myVar"]["error"] == UPLOAD_ERR_OK){
		$folderLocation = "myFiles";
		if(!file_exists($folderLocation)) mkdir($folderLocation);
		move_uploaded_file($_FILES["myVar"]["tmp_name"],"$folderLocation/" .
	basename($_FILES["myVar"]["name"]));
?>
