<?php include('includes/header.php'); ?>

<div id="content">
    <h2>Kosár</h2>

    <style>
        table, th, td {
            border: 3px ridge lightblue;
            text-align: left;
            max-width: 850px;
            padding: 5px;
        }
    </style>
    <br>
    <?php
    if (isset($_SESSION['kosar'])) {

        echo '<div class="row">';


        echo '<table>';
        echo '<th>megnevezés</th>'
        . '<th>darab</th>'
        . '<th>ár</th>'
        . '<th>Opciók</th>';

        $sum =0;
        
        foreach ($_SESSION['kosar'] as $tetel) {

            echo '<tr>';

            echo '<td>' . $tetel["megnevezes"] . '</td>';
            echo '<td>' . $tetel["db"] . '</td>';
            echo '<td>' . $tetel["ar"]*$tetel['db'] . ' Ft</td>';
            $sum += $tetel["ar"]*$tetel['db'];
            echo '<td> '. '<form name="kosarForm" method="post"> 

<div class="input-group">
<input type="hidden" name="torolid" value="">
<input type="submit" class="btn btn-default" value="Törlés" name="torles">
</form></td>';;
            
 
       }
        echo '<tr><td>összesen<td><td>'. $sum .' Ft';
        echo '<td> '       . '<form name="kosarForm" method="post"> 

<div class="input-group">
<input type="hidden" name="buyid" value="">
<input type="submit" class="btn btn-default" value="Vásárlás" name="buy">
</form></td>';
        
        echo '</table><br><br>';
    } else {
        echo "0 results";
    }
    ?>
</div>

    <?php
    include('includes/footer.php');
    