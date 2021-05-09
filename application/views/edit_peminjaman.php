<div class="box">
	<div class="box box-danger">
	<div class="box-header">
		<b><i>From Input Data peminjaman</i></b>	
</div>
<div class="box-body">
	<form action="<?php echo base_url() ?>index.php/Welcome/updatepeminjaman" method="POST">
	<?php
		foreach ($get_id_peminjam as $tampilkan) { ?>

			<input type="hidden" name="id_peminjam" value="<?php echo $tampilkan->id_peminjam?>">
		<b>Nama</b><input type="text" name="nama" class="form-control" value="<?php echo $tampilkan->nama ?>">
		<b>kelas</b><input type="text" name="kelas" class="form-control" value="<?php echo $tampilkan->kelas ?>">
		<b>Nama_Buku</b><input type="text" name="nama_buku" class="form-control" value="<?php echo $tampilkan->nama_buku ?>">
	    <b>Tgl_Pinjam</b><input type="text" name="tgl_pinjam" class="form-control" value="<?php echo $tampilkan->tgl_pinjam ?>">
		<b>Tgl_Kembali</b><input type="text" name="tgl_kembali" class="form-control" value="<?php echo $tampilkan->tgl_kembali?>">
		<b>Tgl_Pengembalian</b><input type="text" name="tgl_pengembalian" class="form-control" value="<?php echo $tampilkan->tgl_pengembalian?>">
		<b>Telat</b><input type="text" name="telat" class="form-control" value="<?php echo $tampilkan->telat ?>">
		<b>Denda</b><input type="text" name="denda" class="form-control" value="<?php echo $tampilkan->denda ?>">
		<b>Jumlah_pinjam</b><input type="text" name="jumlah_pinjam" class="form-control" value="<?php echo $tampilkan->jumlah_pinjam ?>">
		<b>Petugas</b><input type="text" name="petugas" class="form-control" value="<?php echo $tampilkan->petugas ?>">
		<br>
		<button class="btn btn-primary btn-md pull-right" type="submit">Simpan</button>
	<?php }
	?>
	</form>
</div>
</div>
