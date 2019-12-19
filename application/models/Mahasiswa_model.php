<?php 

class Mahasiswa_model extends CI_model
{
	public function getALLMahasiswa()
	{
// return 	$this->db->get('mahasiswa')->result_array();
		$this->db->order_by('id','desc');
		return $this->db->get('mahasiswa')->result_array();
		}

	public function tampil(){
		return $this->db->get('mahasiswa');
	}

// 	public function tambahDataMahasiswa(){

// 		$config['upload_path']          = './assets/gambar/';
// 		$config['allowed_types']        = 'gif|jpg|png';
// 		$config['max_size']             = 10000;
// 		$config['max_width']            = 5000;
// 		$config['max_height']           = 5000;

// 		$this->load->library('upload', $config);


// 		if ( ! $this->upload->do_upload())
// 		{
// 		echo "gagal upload";
// 		}
// 		else
// 		{

// 	   		$img= $this->upload->data();
//             $gambar=$img['file_name'];
// 			$nama =$this->input->post('nama', true);
// 			$nrp =$this->input->post('nrp', true);
// 			$email =$this->input->post('email', true);
// 			$jurusan =$this->input->post('jurusan', true);

		
// 			$data = array(
// 					"nama" =>$nama,
// 					"nrp" =>$nrp, 
// 					"email" =>$email,
// 					"jurusan" =>$jurusan,
// 					 'foto'        => $gambar

// 					);

// 			$this->db->insert('mahasiswa', $data);

// 	}
// }
	public function hapusDataMahasiswa($id){

		// $this->db->where('id', $id);

		// $this->db->delete('mahasiswa');
		$this->db->delete('mahasiswa', ['id'=> $id]);

	}

	public function getMahasiswaById($id){

		return $this->db->get_where('mahasiswa', ['id'=>
			$id])->row_array();

	}


	public function ubahDataMahasiswa(){

		$data =[
			"nama" =>$this->input->post('nama', true),
			"nrp" =>$this->input->post('nrp', true),
			"email" =>$this->input->post('email', true),
			"jurusan" =>$this->input->post('jurusan', true),

			];

			$this->db->where('id', $this->input->post('id'));	
			$this->db->update('mahasiswa', $data);

	}

	public function cariDataMahasiswa(){

		$keyword=$this->input->post('keyword', true);

		$this->db->like('nama', $keyword);
		$this->db->or_like('jurusan', $keyword);
		$this->db->or_like('nrp', $keyword);
		$this->db->or_like('email', $keyword);
		return $this->db->get('mahasiswa')->result_array();

	}

	public function tambahDataMahasiswa(){

		

		$data =[
			"nama" =>$this->input->post('nama', true),
			"nrp" =>$this->input->post('nrp', true),
			"email" =>$this->input->post('email', true),
			"jurusan" =>$this->input->post('jurusan', true),

			];

			$this->db->insert('mahasiswa', $data);

	}

	public function get($id = null)
	{
		$this->db->from('mahasiswa');
		if($id != null) {
			$this->db->where('id', $id);

		} $query = $this->db->get();
		return $query;
	}

}



