<?php 

class Mahasiswa extends CI_Controller{

	public function __construct()

{
	parent::__construct();
	$this->load->model('Mahasiswa_model');
	$this->load->library('form_validation');
	$this->load->helper('url');

}

	public function index(){


		$data['judul']= 'Daftar Mahasiswa';

		$data['mahasiswa']= $this-> Mahasiswa_model->getALLMahasiswa();
		
		if($this->input->post('keyword')){

	$data['mahasiswa']= $this-> Mahasiswa_model->cariDataMahasiswa();
}
		$this->load->view('templates/header', $data );

 		$this->load->view('mahasiswa/index', $data);

 		$this->load->view('templates/footer');
	}

	public function tambah(){

		$data['judul']= 'Form Tambah Data Mahasiswa';

		$this->form_validation->set_rules('nama', 'Nama', 'required');

		$this->form_validation->set_rules('nrp', 'NRP', 'required|numeric');

		$this->form_validation->set_rules('email', 'Email', 'required|valid_email');


		if($this->form_validation->run()==FALSE){

		$this->load->view('templates/header', $data);

		$this->load->view('mahasiswa/tambah');

 		$this->load->view('templates/footer');


		} else{
			$this->Mahasiswa_model->tambahDataMahasiswa();
			$this->session->set_flashdata('flash','Ditambahkan');
			redirect('mahasiswa');	
		}
		}

	public function hapus($id){

		$this->Mahasiswa_model->hapusDataMahasiswa($id);

		$this->session->set_flashdata('flast', 'Dihapus');
		
		redirect('mahasiswa');
	}

	public function detail($id){

		$data['judul'] = "Detail Data Mahasiswa";

		$data['mahasiswa']= $this->Mahasiswa_model->

		getMahasiswaById($id);

		$this->load->view('templates/header', $data );

 		$this->load->view('mahasiswa/detail', $data);

 		$this->load->view('templates/footer');

	}
	public function ubah($id){

		$data['judul']= 'Form Ubah Data Mahasiswa';
		$data['mahasiswa']= $this->Mahasiswa_model->getMahasiswaById($id);
		$data['jurusan']=['Teknik Informatika', 'Teknik Mesin', 'Teknik Industri','Teknik Plabiologi', 'Teknik Lingkungan'];

		$this->form_validation->set_rules('nama', 'Nama', 'required');

		$this->form_validation->set_rules('nrp', 'NRP', 'required|numeric');

		$this->form_validation->set_rules('email', 'Email', 'required|valid_email');


		if($this->form_validation->run()==FALSE){

		$this->load->view('templates/header', $data);

		$this->load->view('mahasiswa/ubah', $data);

 		$this->load->view('templates/footer');


		} else{
			$this->Mahasiswa_model->ubahDataMahasiswa();
			$this->session->set_flashdata('flash','Diubah');
			redirect('mahasiswa');	
		}
		}
	public function pdf()
	{
		$this->load->library('dompdf_gen');
		$data['mahasiswa'] = $this->Mahasiswa_model->tampil('mahasiswa')->result_array();
		$this->load->view('mahasiswa/laporan_pdf', $data);
		$paper_size ='A4';
		$orientation ='landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("laporan_mhs.pdf", array('Attachment'=>0));
	}

	function barcode_qrcode($id){
	$data['judul'] = "Detail Data Mahasiswa";
		$data['mahasiswa']= $this->Mahasiswa_model->

		getMahasiswaById($id);
		$this->load->view('templates/header', $data );

 		$this->load->view('mahasiswa/barcode_qrcode', $data);

 		$this->load->view('templates/footer');
	}
	function qrcode(){
		// use Endroid\QrCode\QrCode;

$qrCode = new Endroid\QrCode\QrCode('Life is too short to be generating QR codes');

header('Content-Type: '.$qrCode->getContentType());
echo $qrCode->writeString();
	}
}