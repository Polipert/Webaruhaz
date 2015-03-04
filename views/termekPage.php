<?php include('includes/header.php'); ?>

<div id="content">
    <h2>Termékek</h2>
    <div id="kereses">
        <form id="kereses" method="get" action="">
            <input type="text" class="kereses" name="q" size="21" maxlength="120"><input type="submit" value="Keresés" class="button">
        </form>
        <div class="keres"></div>
    </div>
    <style>
        table, th, td {
            border: 1px solid black;
            text-align: center;
        }
    </style>
    <br>
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

    $termekek = $db->query("select termekek.*,kategoriak.description as kategoria from termekek join kategoriak on termekek.kategoria_id = kategoriak.id");
    if ($termekek->num_rows > 0) {
        echo "<table><tr><th>Megnevezés</th><th>Kategória</th><th>Ár</th><th>Akciós Ár</th><th>Garancia</th><th>Készleten</th></tr>";
        while ($row = $termekek->fetch_assoc()) {

            echo "<tr><td>" . $row["megnevezes"] . "</td><td>" . $row["kategoria"] . "</td><td> " . $row["ar"] . "</td><td>" . $row["akcios_ar"] . "</td><td>" . $row["garancia"] . "</td><td>" . $row["keszlet"] . "</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }
    ?>
</div>

<?php
include('includes/footer.php');