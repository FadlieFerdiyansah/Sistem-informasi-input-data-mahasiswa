<?php $thisPage="Data Mahasiswa"; ?>
<?php $title = "Data Mahasiswa" ?>
<?php $description = "Data Mahasiswa" ?>
<?php 
include("header.php"); 
include("../koneksi.php"); 
?>
	<div class="container">
		<div class="content">
			<h2>Data Mahasiswa</h2>
			<hr />
	
			<form class="form-inline" method="get">
				<div class="form-group">
					<select name="filter" class="form-control" onchange="form.submit()">
						<option value="0">Filter Data Mahasiswa</option>
						<?php $filter = addslashes(isset($_GET['filter']) ? strtolower($_GET['filter']) : NULL);  ?>
						<option value="TI" <?php if($filter == 'TI'){ echo 'selected'; } ?>>TI</option>
						<option value="MI" <?php if($filter == 'MI'){ echo 'selected'; } ?>>MI</option>
                        <option value="SI" <?php if($filter == 'SI'){ echo 'selected'; } ?>>SI</option>
						<option value="IK" <?php if($filter == 'IK'){ echo 'selected'; } ?>>IK</option>
					</select>
				</div>
			</form> 
			<br />
			
			<div class="table-responsive">
				<table class="table table-striped table-hover">
					<tr>
						<th>No</th>
						<th>NIM</th>
						<th>Nama</th>
						<th>Jenis Kelamin</th>
						<th>Tempat Lahir</th>
						<th>Tanggal Lahir</th>
						<th>No Telepon</th>
						<th>Agama</th>
						<th>Email</th>
						<th>Fakultas</th>
						<th>Tools</th>
					</tr>
					<?php
					if($filter){
						$sql = mysqli_query($koneksi, "SELECT * FROM tbl_mahasiswa WHERE fakultas='$filter' ORDER BY nim ASC"); 
					}else{
						$sql = mysqli_query($koneksi, "SELECT * FROM tbl_mahasiswa ORDER BY nim ASC"); 
					}
					if(mysqli_num_rows($sql) == 0){ 
						echo '<tr><td colspan="14">Data Tidak Ada.</td></tr>'; 
					}else{ 
						$no = 1; 
						while($row = mysqli_fetch_assoc($sql)){ 
							echo '
							<tr>
								<td>'.$no.'</td>
								<td>'.$row['nim'].'</td>
								<td><a href="profile_mahasiswa.php?nim='.$row['nim'].'">'.$row['nama'].'</a></td>
								<td>'.$row['jenis_kelamin'].'</td>
								<td>'.$row['tempat_lahir'].'</td>
								<td>'.$row['tanggal_lahir'].'</td>
								<td>'.$row['no_telepon'].'</td>
								<td>'.$row['agama'].'</td>
								<td>'.$row['email'].'</td>
								<td>';
								if($row['fakultas'] == 'TI'){
									echo '<span class="label label-success">Ti</span>';
								}
								else if ($row['fakultas'] == 'MI' ){
									echo '<span class="label label-success">MI</span>';
								}
								else if ($row['fakultas'] == 'SI' ){
									echo '<span class="label label-success">SI</span>';
								}
								else if ($row['fakultas'] == 'IK' ){
									echo '<span class="label label-success">IK</span>';
								}
							echo '
								</td>
								<td>
									
									<a href="edit_mahasiswa.php?nim='.$row['nim'].'" title="Edit Data" data-toggle="tooltip" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
									
								</td>
							</tr>
							';
							$no++; 
						}
					}
					?>
				</table>
			</div> 
		</div> 
	</div> 
<?php 
include("footer.php"); 
?>