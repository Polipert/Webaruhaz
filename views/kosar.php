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
    if (isset($_SESSION['kosar']) && !empty($_SESSION['kosar'])) {

        echo '<div class="row">';


        echo '<table>';
        echo '<th>megnevezés</th>'
        . '<th>darab</th>'
        . '<th>ár</th>'
        . '<th>Opciók</th>';

        $sum = 0;

        foreach ($_SESSION['kosar'] as $i => $tetel) {

            echo '<tr>';

            echo '<td>' . $tetel["megnevezes"] . '</td>';
            echo '<td>' . $tetel["db"] . '</td>';
            echo '<td>' . $tetel["ar"] * $tetel['db'] . ' Ft</td>';
            $sum += $tetel["ar"] * $tetel['db'];
            echo '<td> ' . '<form name="kosarForm" method="post"> 

<div class="input-group">
<input type="hidden" name="torolid" value="' . $i . '">
<input type="submit" class="btn btn-default" value="Törlés" name="torles">
</form></td>';
            ;
        }
        echo '<tr><td>összesen<td><td>' . $sum . ' Ft';
        echo '<td> ';

        echo '</table><br><br>';

        // Rendelés űrlap:
        ?>
        <h3>Rendelés leadása:</h3>
        <form name="vasarForm" method="post">

            <label>Vásárló neve:</label><br>
            <input type="text" name="name"><br>
            <label>Vásárló telefonszáma:</label><br>
            <input type="text" name="telszam"><br>
            <label>Vásárló postázási cím:</label><br>
            <input type="text" name="postacim"><br>
            <label>Vásárló irányítószáma:</label><br>
            <input type="text" name="irszam" size="4"><br>
            <label>Vásárló e-mail címe:</label><br>
            <input type="email" name="email"><br>
            <label>Megjegyzés:</label><br>
            <textarea name="comment" cols="40" rows="6"></textarea>

            <div class="input-group">
                <input type="hidden" name="buyid" value="">
                <input type="submit" class="btn btn-default" value="Vásárlás" name="buy">
            </div>
        </form>
        <?php
    } else {
        if (isset($_SESSION['msg_vasarlas'])) {
            echo $_SESSION['msg_vasarlas'];
            unset( $_SESSION['msg_vasarlas']);
        } else {
            echo "A kosár üres!";
        }
    }
    ?>
</div>

<?php
include('includes/footer.php');
