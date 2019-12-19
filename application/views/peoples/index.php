<div class="container">
	<h3 class="mt-3">List of Peoples</h3>

	<div class="row">
		<div class="col-md-5">
			<form action="<?php base_url('peoples');?>" method="post">
				<div class="input-group mb-3">
					<input type="text" name="keyword" class="form-control" placeholder="Searh keyword.." autocomplete="off" autofocus >
				<div class="input-group-append">
					<input  class="btn btn-primary" type="submit" name="submit">
				</div>
			</div>		
			</form>
		</div>
	</div>

	<div class="row">
		<div class="col-md">
			<h5>Result : <?= $total_rows; ?></h5>

			<table class="table">
				<thead>
					<?php $i=1; ?>
					<tr>
					<th>No</th>
					<th>Name</th>
					<th>Email</th>
					<th>Action</th>
					</tr>
				</thead>
			
			<tbody>
				<?php if(empty($peoples)): ?>
					<tr>
						<td colspan="4">
							<div class="alert alert-danger" role="alert"> data not found!</div>
						</td>
					</tr>
				<?php endif ; ?>
				<?php foreach ($peoples as $people ) : ?>


				<tr>
					<th><?= ++$start ; ?></th>
					<td><?= $people['name'] ?></td>
					<td><?= $people['email'] ?></td>
					<td><a href="" class="badge badge-warning">detail</a>
						<a href="" class="badge badge-success">edit</a>
							<!-- <a href="" class="badge badge-danger">hapus</a> -->
						<a href="<?= base_url(); ?>peoples/delete/<?= $people['id'];?>" class="badge badge-danger tombol-hapus" >hapus</a></td>

				</tr>
			<?php endforeach; ?>
			</tbody>
			</table>
			<?= $this->pagination->create_links(); ?>
		</div>
	</div>
</div>