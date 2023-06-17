<?php

namespace App\Controllers\Nimda;

use App\Controllers\BaseController;
use App\Models\BeritaModel;
use App\Models\GaleriModel;
use App\Models\InfoModel;
use App\Models\PengaturanModel;
use App\Models\PengunjungModel;
use App\Models\SliderModel;
use App\Models\User;
use App\Models\UseronlineModel;

class Home extends BaseController
{
    protected $halaman = 'backend/dashboard/';
    protected $model;

    public function __construct()
    {
        $this->userModel = new User();
        $this->pengaturanModel = new PengaturanModel();
        $this->beritaModel = new BeritaModel();
        $this->galeriModel = new GaleriModel();
        $this->infoModel = new InfoModel();
        $this->sliderModel = new SliderModel();
        $this->UseronlineModel = new UseronlineModel();
        $this->PengunjungModel = new PengunjungModel();
    }

    public function index()
    {
        $data['title'] = 'Dashboard';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();
        $data['jmlberita'] = $this->beritaModel->selectCount('berita_id')->first();
        $data['jmlgaleri'] = $this->galeriModel->selectCount('galeri_id')->first();
        $data['jmlinfo'] = $this->infoModel->selectCount('info_id')->first();
        $data['jmlslider'] = $this->sliderModel->selectCount('slider_id')->first();
        $data['berita'] = $this->beritaModel
            ->join('users', 'berita.users_id = users.users_id')
            ->join('kategori', 'berita.kategori_id = kategori.kategori_id')
            ->orderby('berita.berita_id', 'desc')
            ->limit(5)
            ->findAll();
        $data['info'] = $this->infoModel
            ->join('users', 'info.users_id = users.users_id')
            ->join('kategori', 'info.kategori_id = kategori.kategori_id')
            ->orderby('info.info_id', 'desc')
            ->limit(5)
            ->findAll();

        //grafik user
        $db = \Config\Database::connect();
        $query = $db->query('SELECT COUNT(pengunjung_tgl)as jml, pengunjung_tgl FROM pengunjung WHERE year(pengunjung_tgl) = 2021 GROUP BY month(pengunjung_tgl)');
        $results = $query->getResult();
        $data['pengunjung'] = $results;

        $jmlos = $this->PengunjungModel->countAllResults();
        //grafik browser
        $queryb = $db->query('SELECT (COUNT(pengunjung_browser)/' . $jmlos . ')*100 as jml, pengunjung_browser FROM pengunjung GROUP BY pengunjung_browser');
        $resultsb = $queryb->getResult();
        $data['browser'] = $resultsb;

        //statistik OS
        $w10 = $this->PengunjungModel->selectCount('pengunjung_os')->where('pengunjung_os', 'Windows 10')->countAllResults();
        $data['w10'] = ceil(($w10 / $jmlos) * 100);
        $w8 = $this->PengunjungModel->selectCount('pengunjung_os')->where('pengunjung_os', 'Windows 8')->countAllResults();
        $data['w8'] = ceil(($w8 / $jmlos) * 100);
        $mac = $this->PengunjungModel->selectCount('pengunjung_os')->where('pengunjung_os', 'Mac OS')->countAllResults();
        $data['mac'] = ceil(($mac / $jmlos) * 100);
        $android = $this->PengunjungModel->selectCount('pengunjung_os')->where('pengunjung_os', 'Android')->countAllResults();
        $data['android'] = ceil(($android / $jmlos) * 100);
        $other = $this->PengunjungModel->selectCount('pengunjung_os')->where('pengunjung_os', 'Other')->countAllResults();
        $data['other'] = ceil(($other / $jmlos) * 100);

        return view($this->halaman . 'index', $data);
    }
}
