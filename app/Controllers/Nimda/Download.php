<?php

namespace App\Controllers\Nimda;

use App\Controllers\BaseController;
use App\Libraries\Definisi;
use App\Models\DownloadDetailModel;
use App\Models\DownloadModel;
use App\Models\PengaturanModel;
use App\Models\User;

class Download extends BaseController
{
    protected $halaman = 'backend/download/';
    //protected $model;

    public function __construct()
    {
        $this->downloadModel = new DownloadModel();
        $this->downloaddetailModel = new DownloadDetailModel();
        $this->userModel = new User();
        $this->pengaturanModel = new PengaturanModel();
    }

    public function index()
    {
        $data['title'] = 'Download';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['download'] = $this->downloadModel
            ->orderby('download_id', 'asc')
            ->findAll();
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'index', $data);
    }

    public function add()
    {
        $data['title'] = 'Tambah Berita';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'add', $data);
    }

    public function detail($id)
    {
        $data['title'] = 'Kategori';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $urls = $this->request->uri->getSegment(4);
        $def = new Definisi();
        $data['segmentasi'] = $urls;
        $data['download'] = $this->downloaddetailModel
            ->join('download', 'download.download_id= download_detail.download_id')
            ->where('download_detail.download_id', $id)
            ->orderby('download_detail_id', 'desc')
            ->findAll();
        $data['data'] = $this->downloadModel->find($id);
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();


        return view($this->halaman . 'detail', $data);
    }

    public function detail_add($id)
    {
        $data['title'] = 'Tambah Berita';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['data'] = $this->downloadModel->find($id);
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'detail_add', $data);
    }

    public function detail_save($id)
    {
        //dd($id);
        // validation input
        if (!$this->validate([
            'download_detail_judul' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Judul harus diisi'
                ]
            ]
        ])) {
            return redirect()->to(site_url('/nimda/download/detail_add/' . $id))->withInput();
        }


        $slug = url_title($this->request->getPost('download_detail_judul'), '-', true);
        $r = $this->downloaddetailModel->save([
            'download_id' => $id,
            'download_detail_judul' => $this->request->getPost('download_detail_judul'),
            'download_detail_judul' => $slug,
        ]);
        if ($r) {
            $this->notif('Data Download Berhasil disimpan.');
        } else {
            $this->notif('Data Download Gagal disimpan.', 'error');
        }

        return redirect()->to(site_url('/nimda/download/detail/' . $id));
    }

    public function detail_edit($idDownload, $idDetailDownload)
    {
        $data['title'] = 'Edit Kategori';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['download'] = $this->downloaddetailModel->find($idDetailDownload);
        $data['data'] = $this->downloadModel->find($idDownload);
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'detail_edit', $data);
    }

    public function detail_update($idDownload, $idDetailDownload)
    {
        if (!$this->validate([
            'download_detail_judul' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Judul harus diisi',
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            return redirect()->to(site_url('/nimda/download/detail_edit/' . $idDownload . '/' . $idDetailDownload))->withInput();
        }
        $slug = url_title($this->request->getPost('download_detail_slug'), '-', true);
        $r = $this->downloaddetailModel->save([
            'download_detail_id' => $idDetailDownload,
            'download_detail_judul' => $this->request->getPost('download_detail_judul'),
            'download_detail_slug' => $slug,
        ]);

        if ($r) {
            $this->notif('Data Download Berhasil diubah.');
        } else {
            $this->notif('Data Download Gagal diubah.', 'error');
        }

        return redirect()->to(site_url('/nimda/download/detail/' . $idDownload));
    }

    public function detail_delete($idDownload, $idDetailDownload)
    {
        $r = $this->downloaddetailModel->delete($idDetailDownload);
        if ($r) {
            $this->notif('Data Download Berhasil dihapus.');
        } else {
            $this->notif('Data Download Gagal dihapus.', 'error');
        }
        return redirect()->to(site_url('/nimda/download/detail/' . $idDownload));
    }

    public function save()
    {
        // validation input
        if (!$this->validate([
            'download_judul' => [
                'rules' => 'required|is_unique[download.download_judul]',
                'errors' => [
                    'required' => '{field} Judul harus diisi',
                    'is_unique' => '{field} Judul sudah terdaftar'
                ]
            ],
        ])) {
            return redirect()->to(site_url('/nimda/download/add'))->withInput();
        }


        $slug = url_title($this->request->getVar('download_judul'), '-', true);
        $r = $this->downloadModel->save([
            'download_judul' => $this->request->getVar('download_judul'),
            'download_slug' => $slug,
        ]);
        if ($r) {
            $this->notif('Donwload Baru Berhasil disimpan.');
        } else {
            $this->notif('Donwload Gagal disimpan.', 'error');
        }

        return redirect()->to(site_url('/nimda/download'));
    }

    public function edit($id)
    {
        $data['title'] = 'Edit Download';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['download'] = $this->downloadModel->find($id);
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'edit', $data);
    }

    public function update($id)
    {
        // cek judul
        $beritaLama = $this->downloadModel->getSlug($this->request->getPost('download_slug'));
        if ($beritaLama->download_judul == $this->request->getPost('download_judul')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[download.download_judul]';
        }
        if (!$this->validate([
            'download_judul' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} Judul harus diisi',
                    'is_unique' => '{field} Judul sudah terdaftar'
                ]
            ],
        ])) {
            // $validation = \Config\Services::validation();
            return redirect()->to(site_url('/nimda/download/edit/') . $this->request->getPost('download_id'))->withInput();
        }

        $slug = url_title($this->request->getPost('download_judul'), '-', true);
        $r = $this->downloadModel->save([
            'download_id' => $id,
            'download_judul' => $this->request->getPost('download_judul'),
            'download_slug' => $slug,
        ]);

        if ($r) {
            $this->notif('Download Berhasil diubah.');
        } else {
            $this->notif('Download Gagal diubah.', 'error');
        }

        return redirect()->to(site_url('/nimda/download'));
    }

    public function delete($id)
    {
        $r = $this->downloadModel->delete($id);
        if ($r) {
            $this->notif('Donwload Berhasil dihapus.');
        } else {
            $this->notif('Donwload Gagal dihapus.', 'error');
        }
        return redirect()->to(site_url('/nimda/download'));
    }
}
