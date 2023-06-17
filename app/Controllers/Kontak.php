<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\KategoriModel;
use App\Models\PengaturanModel;
use App\Models\KontakModel;
use App\Models\PengunjungModel;
use App\Models\UseronlineModel;

class Kontak extends BaseController
{
    protected $halaman = 'frontend/';

    public function __construct()
    {
        $this->ketegoriModel = new KategoriModel();
        $this->pengaturanModel = new PengaturanModel();
        $this->kontakModel = new KontakModel();
        $this->UseronlineModel = new UseronlineModel();
        $this->PengunjungModel = new PengunjungModel();
    }

    public function index()
    {
        $data['title'] = '| Kontak Kami';
        $data['menu'] = 'kedua';
        $data['profil'] = $this->ketegoriModel
            ->where('kategori_jenis', 'profil')
            ->findAll();
        $data['info'] = $this->ketegoriModel
            ->where('kategori_jenis', 'info')
            ->findAll();
        $data['berita'] = $this->ketegoriModel
            ->where('kategori_jenis', 'berita')
            ->findAll();

        $data['pengaturan'] = $this->pengaturanModel
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

        return view($this->halaman . 'kontak', $data);
    }

    public function save()
    {
        if (!$this->validate([
            'kontak_kami_nama' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Nama harus diisi',
                ]
            ],
            'kontak_kami_email' => [
                'rules' => 'required|valid_email',
                'errors' => [
                    'required' => '{field} Email harus diisi',
                    'valid_email' => '{field} Email yang di input salah',
                ]
            ],
            'kontak_kami_judul' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Judul harus diisi',
                ]
            ],
            'kontak_kami_pesan' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Pesan harus diisi',
                ]
            ],
        ])) {
            // $validation = \Config\Services::validation();
            return redirect()->to('/nimda/kontak')->withInput();
        }

        $r = $this->kontakModel->save([
            'kontak_kami_nama' => $this->request->getPost('kontak_kami_nama'),
            'kontak_kami_email' => $this->request->getPost('kontak_kami_email'),
            'kontak_kami_judul' => $this->request->getPost('kontak_kami_judul'),
            'kontak_kami_pesan' => $this->request->getPost('kontak_kami_pesan'),
        ]);

        if ($r) {
            $this->notif('Kontak Berhasil diubah.');
        } else {
            $this->notif('Kontak Gagal diubah.', 'error');
        }

        return redirect()->to('/kontak');
    }

    //--------------------------------------------------------------------

}
