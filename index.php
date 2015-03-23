<?php

session_start();

require_once 'config.php';
$db = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);
$db->set_charset('utf8');

// Aktuális lap kiválasztása:
$page = 'kezdolap';
if (isset($_GET['q'])) {
  $page = $_GET['q'];
}

// Aktuális lap betöltése:
switch ($page) {
  case 'kezdolap':
    include('controllers/frontPage.php');
    include('views/frontPage.php');
    break;
  //case 'bemutatkozas':
    //include('controllers/introductionPage.php');
    //include('views/introductionPage.php');
    //break;
  case 'termekek':
    $pageTitle = "termekek";
    include('controllers/termekPage.php');
    include('views/termekPage.php');
    break;
case 'kosar':
    $pageTitle = "kosar";
    include('controllers/kosar.php');
    include('views/kosar.php');
    break;
case 'termek':
    $pageTitle = "termek";
    include('controllers/egytermekPage.php');
    include('views/egytermekPage.php');
    break;
  case 'kapcsolat':
    include('controllers/contactPage.php');
    include('views/contactPage.php');
    break;    
  default:
    $pageTitle = "Oldal nem található";
    include('views/404Page.php');
}

$db->close();
