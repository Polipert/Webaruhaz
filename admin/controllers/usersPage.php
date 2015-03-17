<?php

$pageTitle = "Felhasználók kezelése";

//jogosultságok kigyűjtése:
$query = "SELECT * FROM `rights`";
$result = $db->query($query);
if ($db->errno) {
	die($db->error);
}

$rights = array();
$c = 0;
while ($uData = $result->fetch_array()) {
	$rights[$c]['id'] = $uData['id'];
	$rights[$c]['description'] = $uData['description'];
	$c++;
}

// users form feldolgozása:
if (isset($_POST['usersSubmit'])) {
  
	$userName = $_POST['uname'];
	$userPass = crypt($_POST['upass']);
	$userRealName = $_POST['name'];
	$userEmail = $_POST['email'];
	$userRights = $_POST['rights'];
	
	// db-be írás:
	$query = "INSERT INTO users (uname, upass, name, email, rights) VALUES ('$userName', '$userPass', '$userRealName', '$userEmail', '$userRights');";
	$result = $db->query($query);
	if ($db->errno) {
		die($db->error);
	}
	
	$_SESSION['msg'] = 'Felhasználó rögzítve.';
		
	header("Location: $HOST/admin/?q=felhasznalok");
	exit;
}

    // users form keresés:
    if (isset($_POST['searchSubmit'])) {
  
	$where = '';
	$usersName = $_POST['name'];
	if (!empty($usersName)) $where.= (!empty($where)) ? " AND name LIKE '%$usersName%'"  : "name LIKE '%$usersName%'";
	$uName = $_POST['uname'];
	if (!empty($uName)) $where.= (!empty($where)) ? " AND uname LIKE '%$uName%'"  : "uname LIKE '%$uName%'";
	$usersEmail = $_POST['email'];
	if (!empty($usersEmail)) $where.= (!empty($where)) ? " AND `email` LIKE '%$usersEmail%'"  : "`email` LIKE '%$usersEmail%'";
	 
	$query = (!empty($where)) ? "SELECT * FROM `users` WHERE $where" : "SELECT * FROM `users` LIMIT 10";
	$found = $db->query($query);
	if ($db->errno) {
		die($db->error);
	}
        
        $_SESSION['sresult'] = array();
	$c = 0;
	while ($uData = $found->fetch_array()) {
		$_SESSION['sresult'][$c]['name'] = $uData['name'];
		$_SESSION['sresult'][$c]['uname'] = $uData['uname'];
		$_SESSION['sresult'][$c]['email'] = $uData['email'];
		$c++;
	}
        	header("Location: $HOST/admin/?q=felhasznalok");
	exit;
    }
    
   //még nem aktivált kigyűjtése:
$query = "SELECT * FROM `users` WHERE active=0";
$nonActivated = $db->query($query);
if ($db->errno) {
	die($db->error);
}
//  utólagos aktiválása form feldolgozása:
if (isset($_POST['activeSubmit'])) {
  
	foreach ($_POST as $k => $v) {
		if ($k != 'activeSubmit') {
			$query = "UPDATE users SET active=1 WHERE id=$v";
			$result = $db->query($query);
			if ($db->errno) {
				die($db->error);
			}
		}
	}
	
	header("Location: $HOST/admin/?q=felhasznalok");
	exit;
}
    ?>

  