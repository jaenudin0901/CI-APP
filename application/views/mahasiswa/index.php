<div class="container">
	<div class="row">
		<div class="col-md-12">
			<table>
				<thead>
					<tr>
						<th>No</th>
						<th>Nama</th>
					</tr>
				</thead>

				<tbody>
					<!-- <?php $i=1; ?> -->
					<?php foreach ($mahasiswa as $mhs): ?>
					<tr>
						<td><?= $mhs['id']; ?><br>
							 <a href="<?= base_url();?>mahasiswa/barcode_qrcode/<?=$mhs ['id'];?>" class="badge badge-primary"  ><i class="fa fa-barcode"></i>Barcode</a> 
						</td>
						<td><?php $mhs['nama']; ?></td>
					</tr>
					<?php endforeach ; ?>
				</tbody>
			</table>
			
		</div>
	</div>
</div>