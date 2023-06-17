<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\KategoriModel;
use App\Models\BeritaModel;
use App\Models\InfoModel;
use App\Models\PengaturanModel;
use App\Models\PengunjungModel;
use App\Models\SessionViewerModel;
use App\Models\UseronlineModel;

class Berita extends BaseController
{
    protected $halaman = 'frontend/';

    public function __construct()
    {
        $this->ketegoriModel = new KategoriModel();
        $this->beritaModel = new BeritaModel();
        $this->infoModel = new InfoModel();
        $this->pengaturanModel = new PengaturanModel();
        $this->sessionviewerModel = new SessionViewerModel();
        $this->UseronlineModel = new UseronlineModel();
        $this->PengunjungModel = new PengunjungModel();
    }

    public function index($slug)
    {
        $data['title'] = '| Berita';
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

        //cek id info
        $idberita = $this->ketegoriModel
            ->where('kategori_slug', $slug)
            ->first();
        $data['dberita'] = $this->ketegoriModel
            ->where('kategori_slug', $slug)
            ->first();
        $data['databerita'] = $this->beritaModel
            ->join('users', 'berita.users_id = users.users_id')
            ->where('kategori_id', $idberita->kategori_id)
            ->orderby('berita_id', 'desc')
            ->findAll();

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

        return view($this->halaman . 'berita', $data);
    }

    public function detail($slugKategori, $slugBerita)
    {
        $data['title'] = '| Detail Berita';
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


        $data['dberita'] = $this->ketegoriModel
            ->where('kategori_slug', $slugKategori)
            ->first();
        $data['databeritadetail'] = $this->beritaModel
            ->where('berita_slug', $slugBerita)
            ->first();

        $id_berita = $this->beritaModel->where('berita_slug', $slugBerita)->first();
        $id_b = $id_berita->berita_id;
        $ip_user = $_SERVER['REMOTE_ADDR'];
        $tgl  = date("Y-m-d");

        $cek_viewer = $this->sessionviewerModel->where('berita_id', $id_b)->where('session_viewer_ip', $ip_user)->where('session_viewer_tgl', $tgl)->countAllResults();
        //dd($cek_viewer);
        if ($cek_viewer > 0) {
            $cek_ip = $this->sessionviewerModel->where('berita_id', $id_b)->where('session_viewer_ip', $ip_user)->where('session_viewer_tgl', $tgl)->countAllResults();
            if ($cek_ip > 0) {
            } else {
                $this->beritaModel->where('berita_id', $id_b)->increment('berita_view', 1);
            }
        } else {
            $r = $this->sessionviewerModel->save([
                'berita_id' => $id_b,
                'session_viewer_ip' =>  $ip_user,
                'session_viewer_tgl' => $tgl,
            ]);
            $this->beritaModel->where('berita_id', $id_b)->increment('berita_view', 1);
        }

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

        return view($this->halaman . 'beritadetail', $data);
    }

    //--------------------------------------------------------------------

}
