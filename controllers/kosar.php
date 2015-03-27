<?php

if (isset($_POST['torles'])) {
    unset($_SESSION['kosar'][$_POST['torolid']]);
}

if (isset($_POST['buy'])) {
    $name = $_POST['name'];
    $telszam = $_POST['telszam'];
    $postacim = $_POST['postacim'];
    $irszam = $_POST['irszam'];
    $email = $_POST['email'];
    $comment = $_POST['comment'];
    $ido = date('Y-m-d H:i:s');

    $query = "INSERT INTO vasarlasok VALUES (null, '$name', '$telszam', '$postacim', '$irszam', '$email', '$comment', '$ido')";
    $db->query($query);
    if ($db->errno) {
        die($db->error);
    }

    // vasarlas id lekérése:
    $query = "SELECT MAX(id) AS max FROM vasarlasok";
    $vasarlas_id = $db->query($query)->fetch_assoc();
    $vasarlas_id = $vasarlas_id['max'];
    if ($db->errno) {
        die($db->error);
    }

    // kosár mentése:
    foreach ($_SESSION['kosar'] as $item) {
        $query = "INSERT INTO kosar VALUES (null, $vasarlas_id, ${item['id']}, ${item['db']})";
        $db->query($query);
        if ($db->errno) {
            die($db->error);
        }
    }
    
    unset($_SESSION['kosar']);
    $_SESSION['msg_vasarlas'] = 'Megrendelését rögzítettük.';
}
