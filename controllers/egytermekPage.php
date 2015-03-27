<?php

if (isset($_POST['kosarba'])) {
    $darab = $_POST['db'];
    $id = $_POST['id'];
    $query = "SELECT * FROM termekek WHERE id=$id";
    $t = $db->query($query)->fetch_assoc();
    if ($db->errno) {
        die($db->error);
    }
    if (!isset($_SESSION['kosar'])) $_SESSION['kosar'] = array();
    array_push($_SESSION['kosar'], array(
        'id' => $t['id'],
        'megnevezes' => $t['megnevezes'],
        'db' => $darab,
        'ar' => $t['ar'],
    ));
}

$query = "SELECT * FROM `kategoriak`";
$result = $db->query($query);
if ($db->errno) {
    die($db->error);
}

$tags = array();
$c = 0;
while ($tagData = $result->fetch_array()) {
    $tags[$c]['id'] = $tagData['id'];
    $tags[$c]['description'] = $tagData['description'];
    $c++;
}

$termek = $db->query("select termekek.*,kategoriak.description as kategoria from termekek "
                . " join kategoriak on termekek.kategoria_id = kategoriak.id "
                . " WHERE termekek.id=" . $_GET['id'])->fetch_assoc();
