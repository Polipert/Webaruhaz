<?php include('includes/header.php'); ?>

<div id="content">
  <h2>Felhasználók kezelése</h2>
  
	<?php if (isset($_SESSION['msg'])) : ?>
	
		<p><?php print($_SESSION['msg']); unset($_SESSION['msg']); ?></p>
		<br>
		<ul id="navigation" class="nav nav-pills">
			<li role="presentation"><a href="?q=felhasznalok">Új felhasználó</a></li>
		</ul>
	
	<?php else : ?>
	
		<?php if ($_SESSION['rights']==1) : ?>
	
			<form name="usersForm" method="post" id="newsForm">
				<label>Felhasználónév:</label>
				<br>
				<input type="text" name="uname" class="shortText">
				<br>
				<label>Jelszó:</label>
				<br>
				<input type="text" name="upass" class="shortText">
				<br>
				<label>Név:</label>
				<br>
				<input type="text" name="name" class="shortText">
				<br>
				<label>Email:</label>
				<br>
				<input type="text" name="email" class="shortText">
				<br>
				<label>Jogosultsági kör:</label>
				<br>
				<select name="rights">
				<?php 
					foreach ($rights as $right) {
						echo '<option value="'.$right['id'].'">'.$right['description'].'</option>';
					}
				?>
				</select>
				<br>
				<input type="submit" name="usersSubmit">
			</form>
			
		<?php else : ?>
		
			<p>Nincs jogosultsága az oldal megtekintéséhez.</p>
		
		<?php endif; ?>
		
	<?php endif; ?>
	
</div>
  <div id="content">
    <h2>Keresés a felhasználókban</h2>
  
	<?php if (isset($_SESSION['sresult'])) : ?>
	
		<?php 
			if (!empty($_SESSION['sresult'])) {
				foreach ($_SESSION['sresult'] as $item) {
					
					echo '<div class="users">';
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
				<input type="text" name="name" class="shortText">
				<br>
				<label>felhasználónév:</label>
				<br>
				<input type="text" name="uname" class="shortText">
				<br>
				<label>email:</label>
                                <br>
                                <input type="email" name="email" class="shortText">
                                <br>
				<input type="submit" name="searchSubmit" value="Keresés">
			</form>
    
	<?php endif; ?>
                <?php if ($_SESSION['rights']==1 || $_SESSION['rights']==2) : ?>
		
			<hr>
			<h2>Aktiválatlan felhasználók</h2>
			
			<form name="activeForm" method="post" id="activeForm">
				<table>
					<?php
						$c = 1;
						foreach ($nonActivated as $item) {
							$userID = $item['id'];
							echo '<tr>';
							echo '<td class="tid"><input type="checkbox" name="active'.$c.'" value="'.$item['id'].'"></td>';
							echo '<td class="tname">'.$item['name'].'</td>';
							echo '<td class="tuname">'.$item['uname'].'</td>';
							echo '</tr>';
							$c++;
						}
					?>
				</table>
				<input type="submit" name="activeSubmit" value="Aktivál">
			</form>
			
		<?php endif; ?>
 
  </div>
<?php
include('includes/footer.php');
