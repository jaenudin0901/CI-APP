<div class="container">
	<div class="row md-3">
		<div class="col-md-6">
			<div class="card">
				<div class="card-header">Detail Data Mahasiswa
					<h5 class="card-title"><?= $mahasiswa['nama'];?></h5>

					<h5 class="card-subtitle mb-2 text-muted"><?= $mahasiswa['email'];?></h5>

					<p class="card-text"><?= $mahasiswa['nrp'] ;?></p>

					<p class="card-text"><?= $mahasiswa['jurusan'] ;?></p>

					<a href="<?= base_url();?>mahasiswa" class="btn btn-primary">kembali</a>

				</div></div>
			</div>
		</div>
	</div>
</div>