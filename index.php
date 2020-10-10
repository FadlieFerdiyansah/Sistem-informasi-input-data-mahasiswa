<?php $thisPage="Home"; ?>
<?php $title = "Sistem Informasi Data Mahasiswa" ?>
<?php $description = "Mahasiswa Universitas Budi Luhur" ?>
<?php require('akses.php'); ?> 
<?php 
include("header.php"); 
include("koneksi.php"); 
?>
	
	<div class="container">
		<div class="content">
			<div class="jumbotron">
				<center><h1>Sistem Informasi Data Mahasiswa</h1>
				<img src="logo/bl.png" height="350" width="350" class="img-responsive"/><br />
				<a href="login.php" data-toggle="tooltip" title="Login!" class="btn btn-info" role="button"><span class="glyphicon glyphicon-list"></span> Login!</a></center>
			</div> 
		</div> 
	</div>
	
<?php 
include("footer.php"); 
?>