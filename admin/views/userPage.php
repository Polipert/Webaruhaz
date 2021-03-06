<?php include('includes/header.php'); ?>

<div id="content">
    <?php if (isset($_SESSION['msg'])) : ?>
 
 <p><?php print($_SESSION['msg']); unset($_SESSION['msg']); ?></p>
 <br>
 <ul id="navigation" class="nav nav-pills">
      <li role="presentation"><a href="?q=felhasznalok">Új felhasználó</a></li>
    </ul>
<?php else : ?>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>

    
    <?php
// Create connection
    $conn = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);
// Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM users";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table><tr><th>ID</th><th>Username</th><th>Password</th><th>E-mail</th><th>Irányítószám</th><th>Postázási cím</th><th>Telefonszám</th></tr>";
        // output data of each row
        while ($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["id"] . "</td><td>" . $row["uname"] . "</td><td> " . $row["upass"] . "</td><td>" . $row["email"] . "</td><td>" . $row["irszam"] . "</td><td>" . $row["postacim"] . "</td><td>" . $row["telszam"] . "</td>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }
    $conn->close();
    ?> 




    <h2>Felhasználó kezelés</h2>
    <form name="usersForm" method="post">
        <label>Felhasználónév:</label><br>
        <input type="text" name="userName"><br>
        <label>Jelszó:</label><br>
        <input type="password" name="userPass"><br>
        <label>E-mail:</label><br>
        <input type="text" name="email"><br>
        <input type="submit" name="userSubmit">
    </form>
    
    <?php endif; ?>
    
</div>
  <div id="content">
    <h2>Keresés a felhasználókban</h2>
  
	<?php if (isset($_SESSION['sresult'])) : ?>
	
		<?php 
			if (!empty($_SESSION['sresult'])) {
				foreach ($_SESSION['sresult'] as $item) {
					$tagID = $item['tag'];
					echo '<div class="news">';
					echo '<div class="tag">'.$tags[$tagID].'</div>';
					echo '<div class="name">'.$item['name'].'</div>';
					echo '<div class="uname">'.$item['uname'].'</div>';
					echo '<div class="email">'.$item['email'].'</div>';
					echo '</div>';
				}
			} else {
				echo '<p>Nincs találat.</p>';
			}
			unset($_SESSION['sresult']); 
		?>
		<br>
		<ul id="navigation" class="nav nav-pills">
		<li role="presentation"><a href="?q=felhasznalok">Új keresés</a></li>
		</ul>
	
	<?php else : ?>
  
		<form name="searchForm" method="post" id="searchForm">
				</select>
				<br>
				<label>név:</label>
				<br>
				<input type="text" name="title" class="shortText">
				<br>
				<label>felhasználónév:</label>
				<br>
				<input type="text" name="text" class="shortText">
				<br>
				<label>email:</label>
                                <br>
				<input type="submit" name="searchSubmit" value="Keresés">
			</form>
    
	<?php endif; ?>
 
  </div>
<?php include ('includes/footer.php');?>