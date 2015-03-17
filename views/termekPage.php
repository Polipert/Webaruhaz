<?php include('includes/header.php'); ?>

<div id="content">
    <h2>Termékek</h2>
    
    <style>
        table, th, td {
            border: 1px solid black;
            text-align: left;
        }
    </style>
    <br>
    <?php
    if ($termekek->num_rows > 0) {

        echo '<div class="row">';
        
        while ($row = $termekek->fetch_assoc()) {
            echo '<table>';
            $termekkep = $db->query("select * from termekkepek where termek_id=" . $row['id'])->fetch_assoc();
            
            echo '<tr>';
            //echo '<div class="termek">';
            
            if (isset($termekkep['kepfajl'])) {
                echo '<td rowspan="3"><img class="termekkep" src="termekkepek/' . $row['id'] . '/' . $termekkep['kepfajl'] . '"></td>';
            } else {
                echo '<td rowspan="3"><img class="termekkep" src="termekkepek/logoh.jpg"></td>';
                //echo '<tr><td></td>';
            }
            echo '<td class="megeszlek">'. $row["megnevezes"] . '</td></tr><tr><td class="megeszlek">' . $row["leiras"] . '</td></tr><tr><td class="megnevezes"S>' . $row["ar"] . '</td></tr>';
            echo '</table><br><br>';
           
        }
        
    } else {
        echo "0 results";
    }
    ?>
</div>

    <?php
    include('includes/footer.php');
    