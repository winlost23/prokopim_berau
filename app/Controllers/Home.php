<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\BeritaModel;
use App\Models\GaleriModel;
use App\Models\InfoModel;
use App\Models\KategoriModel;
use App\Models\PengaturanModel;
use App\Models\PengunjungModel;
use App\Models\ProfilModel;
use App\Models\SliderModel;
use App\Models\UseronlineModel;

class Home extends BaseController
{
	protected $halaman = 'frontend/';
//coba nambah
	public function __construct()
	{
		$this->ketegoriModel = new KategoriModel();
		$this->pengaturanModel = new PengaturanModel();
		$this->profilModel = new ProfilModel();
		$this->infoModel = new InfoModel();
		$this->beritaModel = new BeritaModel();
		$this->galeriModel = new GaleriModel();
		$this->sliderModel = new SliderModel();
		$this->UseronlineModel = new UseronlineModel();
		$this->PengunjungModel = new PengunjungModel();
	}

	public function index()
	{

		$data['title'] = '';
		$data['menu'] = '';
		$data['pengaturan'] = $this->pengaturanModel
			->first();

		$data['profil'] = $this->ketegoriModel
			->where('kategori_jenis', 'profil')
			->findAll();
		$data['info'] = $this->ketegoriModel
			->where('kategori_jenis', 'info')
			->findAll();
		$data['berita'] = $this->ketegoriModel
			->where('kategori_jenis', 'berita')
			->findAll();

		$data['dataslider'] = $this->sliderModel
			->orderby('slider_id', 'desc')
			->findAll();

		$data['dataprofil'] = $this->profilModel
			->orderby('profil_id', 'asc')
			->limit(3)
			->find();
		$data['datainfo'] = $this->infoModel
			->join('kategori', 'info.kategori_id=kategori.kategori_id')
			->orderby('info_id', 'desc')
			->limit(4)
			->find();
		$data['databerita'] = $this->beritaModel
			->join('kategori', 'berita.kategori_id=kategori.kategori_id')
			->orderby('berita_id', 'desc')
			->limit(4)
			->find();
		$data['datagaleri'] = $this->ketegoriModel
			->where('kategori_jenis', 'galeri')
			->orderby('kategori_id', 'desc')
			->limit(6)
			->find();

		//Statistik User
		$PHPSELF = $_SERVER['PHP_SELF'];
		$tgl = date("Y-m-d");
		$blan = date("Y-m");
		$thn = date("Y");
		//Hari ini
		$data['hariini'] = $this->PengunjungModel->where('pengunjung_tgl', $tgl)->countAllResults();
		//Bulan ini
		$data['bulanini'] = $this->PengunjungModel->like('pengunjung_tgl', $blan)->countAllResults();
		//Tahun ini
		$data['tahunini'] = $this->PengunjungModel->like('pengunjung_tgl', $thn)->countAllResults();
		//Online
		$data['online'] = $this->UseronlineModel->distinct('usersonline_ip')->where('usersonline_file', $PHPSELF)->selectCount('usersonline_ip')->first();

		return view($this->halaman . 'index', $data);
	}

	function unauthorized()
	{
		$data['pengaturan'] = $this->pengaturanModel
			->first();
		return view('backend/login/unauthorized', $data);
	}

	//--------------------------------------------------------------------

}
