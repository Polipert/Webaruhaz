<?php

$pageTitle = "Hírek rögzítése";

// login form feldolgozása:
if (isset($_POST['newsSubmit'])) {
  
	$newsTitle = $_POST['title'];
        $newsLead = $_POST['lead'];
	$newsText = $_POST['text'];
	$newsDate = $_POST['date'];
	
	echo "$newsTitle $newsDate <br> $newsText"; die();
	
	// db-be írás:
	
	
}

?>