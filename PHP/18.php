<?php
	$total = isset($_FILES["myVar"]) ? count($_FILES["myVar"]["name"]) : 0;
	for($i = 0; $i < $total; $i++){
		if($_FILES["myVar"]["error"][$i] == UPLOAD_ERR_OK){
			$folderLocation = "myFiles";

			if(!file_exists($folderLocation)) mkdir($folderLocation);
			move_uploaded_file($_FILES["myVar"]["tmp_name"][$i],"$folderLocation/" . basename($_FILES["myVar"]["name"][$i]));
		}
		else switch ($_FILES["myVar"]["error"][$i])
		{
			case UPLOAD_ERR_INI_SIZE:
				echo "uploaded file exceeds the upload_max_filesize in php.ini";
				break;
			case UPLOAD_ERR_FORM_SIZE:
				echo "uploaded file exceeds the MAX_FILE_SIZE in html form";
				break;
			case UPLOAD_ERR_PARTIAL:
				echo "The uploaded file was partially uploaded";
				break;
			case UPLOAD_ERR_NO_FILE:
				echo "no file was uploaded";
				break;
			case UPLOAD_ERR_NO_TMP_DIR:
				echo "missing a temporary folder";
				break;
			case UPLOAD_ERR_CANT_WRITE:
				echo "failed to write file to disk";
				break;
			case UPLOAD_ERR_EXTENSION:
				echo "A php extension stopped the file upload";
				break;
			default:
				echo "Unknown Error";
				break;
?>
