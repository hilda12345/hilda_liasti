<div class="box">
	<div class="box box-danger">
	<div class="box-header">
		From Input Data Anggota	
</div>
<div class="box-body">
	<form action="<?php echo base_url() ?>index.php/Welcome/updateanggota" method="POST">
	<?php
		foreach ($get_id_anggota as $tampilkan) { ?>

			<input type="hidden" name="id_anggota" value="<?php echo $tampilkan->id_anggota?>">
		Nama_Anggota <input type="text" name="nama_anggota" class="form-control" value="<?php echo $tampilkan->nama_anggota ?>">
		Kelas <input type="text" name="kelas" class="form-control" value="<?php echo $tampilkan->kelas ?>">
		Jenis_Kelamin <input type="text" name="jenis_kelamin" class="form-control" value="<?php echo $tampilkan->jenis_kelamin ?>">
		No_Hp <input type="text" name="no_hp" class="form-control" value="<?php echo $tampilkan->no_hp ?>">
		Alamat <input type="text" name="alamat" class="form-control" value="<?php echo $tampilkan->alamat ?>">
		<br>
		<button class="btn btn-primary btn-md pull-right" type="submit">Simpan</button>
	<?php }
	?>
	</form>
</div>
</div>
