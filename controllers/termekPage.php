<?php
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
       // van-e kategória?
    if (isset($_GET['kat'])) {
        $termekek = $db->query("select termekek.*,kategoriak.description as kategoria from termekek "
                . " join kategoriak on termekek.kategoria_id = kategoriak.id "
                . " WHERE kategoria_id=" . $_GET['kat']);
    } else {
        $termekek = $db->query("select termekek.*,kategoriak.description as kategoria from termekek join kategoriak on termekek.kategoria_id = kategoriak.id");
    }