<div class="container">
	<div class="flash-data" data-flashdata="<?= $this->session->flashdata('flash');?>"></div>

	<div class="row mt-3">
	
		<div class="col-md-6">

			<h1>Daftar Mahasiswa</h1>

			<?php if (empty($mahasiswa)) : ?>

				<div class="alert alert-danger" role="alert"> data mahasiswa tidak ditemukan.
					
				</div>
			<?php endif ; ?>
		
		<ul class="list-group">

			<?php foreach ($mahasiswa as $mhs) :?>

				 <li class="list-group-item">

				  	<?= $mhs['nama']; ?>

				  	</li>
				<?php endforeach ; ?>

		</ul>
		</div>
	</div>
</div>

