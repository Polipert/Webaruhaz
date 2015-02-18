<?php include('includes/header.php'); ?>

<div id="content">
  <h2>Hírek rögzítése</h2>
  <form name="newsForm" method="post">
    <label>Cím:</label>
    <br>
    <input type="title" name="title">
    <br>
    <label>Bevezető:</label>
    <br>
    <textarea type="text"></textarea>
    <br>
    <label>Szövegtörzs:</label>
    <br>
    <textarea name="lead"></textarea>
    <br>
	<label>Dátum:</label>
    <br>
    <input type="text" name="date">
    <br>
    <input type="submit" name="newsSubmit">
  </form>
</div>

<?php
include('includes/footer.php');
