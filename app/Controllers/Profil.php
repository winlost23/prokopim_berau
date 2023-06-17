<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\BeritaModel;
use App\Models\KategoriModel;
use App\Models\InfoModel;
use App\Models\PengaturanModel;
use App\Models\PengunjungModel;
use App\Models\ProfilModel;
use App\Models\UseronlineModel;

class Profil extends BaseController
{
    protected $halaman = 'frontend/';

    public function __construct()
    {
        $this->ketegoriModel = new KategoriModel();
        $this->infoModel = new InfoModel();
        $this->profilModel = new ProfilModel();
        $this->beritaModel = new BeritaModel();
        $this->pengaturanModel = new PengaturanModel();
        $this->UseronlineModel = new UseronlineModel();
        $this->PengunjungModel = new PengunjungModel();
    }

    public function index($slug)
    {
        $data['title'] = '| Profil';
        $data['menu'] = 'kedua';
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

        //slide
        $data['infoslide'] = $this->infoModel
            ->join('kategori', 'info.kategori_id=kategori.kategori_id')
            ->orderby('info_id', 'desc')
            ->limit(5)
            ->findAll();
        $data['beritaslide'] = $this->beritaModel
            ->join('kategori', 'berita.kategori_id=kategori.kategori_id')
            ->orderby('berita_id', 'desc')
            ->limit(5)
            ->findAll();

        //cek id profil
        $idprofil = $this->ketegoriModel
            ->where('kategori_slug', $slug)
            ->first();
        $data['dataprofil'] = $this->profilModel
            ->where('kategori_id', $idprofil->kategori_id)
            ->first();

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

        return view($this->halaman . 'profil', $data);
    }

    //--------------------------------------------------------------------

}
