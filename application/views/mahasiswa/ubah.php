<div class="container">
	

<div class="card">
			<div class="card-header">
				Form Ubah Data Mahasiswa
			</div>
		<!-- 	<div class="card-body">
				<?php if(validation_errors() ): ?>
					<div class="alert alert-danger" role="alert"> <?= validation_errors();?> </div>
				<?php endif; ?> -->
			<form action="" method="post">
				<input type="hidden" name="id" value="<?= $mahasiswa['id'];?>">
			<div class="form-group">
				<label for="nama">Nama </label>
				<input type="text" name="nama" class="form-control" id="nama" value="<?= $mahasiswa['nama'];?>">
				<small class="form-text text-danger"><?= form_error('nama');?></small>
			</div>
			<div class="form-group">
				<label for="nama">NRP </label>
				<input type="text" name="nrp" class="form-control" id="nrp"  value="<?= $mahasiswa['nrp'];?>" >
				<small class="form-text text-danger"><?= form_error('nrp');?></small>
			</div>
			<div class="form-group">
				<label for="nama">Email </label>
				<input type="text" name="email" class="form-control" id="email "  value="<?= $mahasiswa['email'];?>">
				<small class="form-text text-danger"><?= form_error('email');?></small>
			</div>
			<div class="form-group">
				<label for="nama">Jurusan</label>
				<select class="form-control" id="jurusan" name="jurusan">
					<?php foreach($jurusan as $j): ?>

						<?php  if ( $j ==$mahasiswa['jurusan']): ?>

					<option value="<?= $j;?>"selected><?= $j;?></option>

				<?php else : ?>
						<option value="<?= $j;?>"><?= $j;?></option>

				<?php endif; ?>
				<?php endforeach; ?>
					<!-- <option value="Teknik Industri">Teknik Industri</option>
					<option value="Teknik Mesin">Teknik Mesin</option>
					<option value="Teknik plabiologi">Teknik Plabiologi</option>
					<option value="Teknik Lingkungan">Teknik Lingkungan</option> -->
				</select>
			</div>
			<button type="submit" name="tambah" class="btn btn-primary float-right" >Ubah Data</button>
		</form>
</div>


</div>
</div>