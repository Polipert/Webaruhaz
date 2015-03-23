<?php include('includes/header.php'); ?>

<div id="content">
    <h2>Termékek</h2>
    
    <style>
      table, th, td {
            border: 3px ridge lightblue;
            text-align: left;
            max-width: 850px;
       }
    </style>
    <br>
    <?php
    

        echo '<div class="row">';
        
 
            echo '<table>';
            $termekkep = $db->query("select * from termekkepek where termek_id=" . $termek['id'])->fetch_assoc();
            
            echo '<tr>';
            //echo '<div class="termek">';
            
            if (isset($termekkep['kepfajl'])) {
                echo '<td rowspan="8"><img class="egytermekkep" src="termekkepek/' . $termek['id'] . '/' . $termekkep['kepfajl'] . '"></td>';
            } else {
                echo '<td rowspan="8"><img class="termekkep" src="termekkepek/logoh.jpg"></td>';
                //echo '<tr><td></td>';
            }
            echo '<tr><td class="megeszlek">'. $termek["megnevezes"] . '</td></tr>';
            echo '<tr><td class="megeszlek">' . $termek["leiras"] . '</td></tr>';
            echo '<tr><td class="megeszlek">'. $termek["adatok"] . '</td></tr>';
            echo '<tr><td class="megeszlek">'. $termek["garancia"] . ' hónap garancia</td></tr>';
            echo '<tr><td class="megeszlek">' . $termek["akcios_ar"] . ' Ft (akciós ár)</td></tr>';
            echo '<tr><td class="megeszlek">' . $termek["ar"] . ' Ft</td></tr>';
            echo '<tr><td class="megeszlek">
<form name="kosarForm" method="post"> 

<div class="input-group">
  <input type="text" class="form-control" aria-describedby="basic-addon1" name="db" value="1">
  <span class="input-group-addon" id="basic-addon1">db</span>
</div>
<input type="hidden" name="id" value="'.$termek['id'].'">
<input type="submit" class="btn btn-default" value="Kosárba!" name="kosarba">
</form>
</td></tr>';
            
            echo '</table><br><br>';
           
        
    
    ?>
</div>

    <?php
    include('includes/footer.php');
    