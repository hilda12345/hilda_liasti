<div class="box">
	<div class="box box-danger">
	<div class="box-header">
		From Input Data Buku	
</div>
<div class="box-body">
	<form action="<?php echo base_url() ?>index.php/Welcome/updatebuku" method="POST">
	<?php
		foreach ($get_id_buku as $tampilkan) { ?>

			<input type="hidden" name="id_buku" value="<?php echo $tampilkan->id_buku?>">
		Nama_buku <input type="text" name="nama_buku" class="form-control" value="<?php echo $tampilkan->nama_buku ?>">
		jenis_buku <input type="text" name="jenis_buku" class="form-control" value="<?php echo $tampilkan->jenis_buku ?>">
		penulis_buku <input type="text" name="penulis_buku" class="form-control" value="<?php echo $tampilkan->penulis_buku ?>">
		penerbit_buku <input type="text" name="penerbit_buku" class="form-control" value="<?php echo $tampilkan->penerbit_buku ?>">
		<br>
		<button class="btn btn-primary btn-md pull-right" type="submit">Simpan</button>
	<?php }
	?>
	</form>
</div>
</div>
