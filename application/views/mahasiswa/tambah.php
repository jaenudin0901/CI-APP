<div class="container">
	

<div class="card">
			<div class="card-header">
				Form tambah Data Mahasiswa
			</div>
		<!-- 	<div class="card-body">
				<?php if(validation_errors() ): ?>
					<div class="alert alert-danger" role="alert"> <?= validation_errors();?> </div>
				<?php endif; ?> -->
			<form action="" method="post">
			<div class="form-group">
				<label for="nama">Nama </label>
				<input type="text" name="nama" class="form-control" id="nama">
				<small class="form-text text-danger"><?= form_error('nama');?></small>
			</div>
			<div class="form-group">
				<label for="nama">NRP </label>
				<input type="text" name="nrp" class="form-control" id="nrp" >
				<small class="form-text text-danger"><?= form_error('nrp');?></small>
			</div>
			<div class="form-group">
				<label for="nama">Email </label>
				<input type="text" name="email" class="form-control" id="email ">
				<small class="form-text text-danger"><?= form_error('email');?></small>
			</div>
			<div class="form-group">
				<label for="nama">Jurusan</label>
				<select class="form-control" id="jurusan" name="jurusan">
					<option value="Teknik Informatika">Teknik Informatika</option>
					<option value="Teknik Industri">Teknik Industri</option>
					<option value="Teknik Mesin">Teknik Mesin</option>
					<option value="Teknik plabiologi">Teknik Plabiologi</option>
					<option value="Teknik Lingkungan">Teknik Lingkungan</option>
				</select>
			
<input type="file" name="foto"><bR>

			<button type="submit" name="tambah" class="btn btn-primary float-right" >Tambah Data</button>
		</form>
</div>


</div>
</div>