<?php

namespace App\Controllers\Nimda;

use App\Controllers\BaseController;
use App\Models\PidatoDetailModel;
use App\Models\KategoriModel;
use App\Libraries\Definisi;
use App\Models\PengaturanModel;
use App\Models\User;

class Pidato extends BaseController
{
    protected $halaman = 'backend/pidato/';
    //protected $model;

    public function __construct()
    {
        $this->pidatodetailModel = new PidatoDetailModel();
        $this->ketegoriModel = new KategoriModel();
        $this->userModel = new User();
        $this->pengaturanModel = new PengaturanModel();
    }

    public function index()
    {
    }

    public function kategori()
    {
        $data['title'] = 'Kategori';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $urls = $this->request->uri->getSegment(4);
        $def = new Definisi();
        $data['segmentasi'] = $urls;
        $data['kategori'] = $this->ketegoriModel
            ->orderby('kategori_judul', 'asc')
            ->findAll();
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();


        return view($this->halaman . 'kategori', $data);
    }

    public function savekategori()
    {
        // validation input
        if (!$this->validate([
            'kategori_judul' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Judul kategori harus diisi'
                ]
            ]
        ])) {
            return redirect()->to(site_url('/nimda/pidato/kategori/'))->withInput();
        }

        $slug = url_title($this->request->getPost('kategori_judul'), '-', true);
        $r = $this->ketegoriModel->save([
            //'users_id' => session()->userid,
            'kategori_judul' => $this->request->getPost('kategori_judul'),
            'kategori_slug' => $slug,
        ]);
        if ($r) {
            $this->notif('Pidato kategori Berhasil disimpan.');
        } else {
            $this->notif('Pidato kategori Gagal disimpan.', 'error');
        }

        return redirect()->to(site_url('/nimda/pidato/kategori/'));
    }

    public function kategori_edit($id)
    {
        $data['title'] = 'Edit Kategori';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['kategori'] = $this->ketegoriModel
            ->orderby('kategori_judul', 'asc')
            ->findAll();
        $data['kategori_edit'] = $this->ketegoriModel
            ->find($id);
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'kategori_edit', $data);
    }

    public function kategori_update()
    {

        if (!$this->validate([
            'kategori_judul' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Judul kategori harus diisi',
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            return redirect()->to(site_url('/nimda/pidato/kategori_edit/') . $this->request->getPost('kategori_id'))->withInput();
        }
        $slug = url_title($this->request->getPost('kategori_judul'), '-', true);
        $r = $this->ketegoriModel->save([
            'kategori_id' => $this->request->getPost('kategori_id'),
            'kategori_judul' => $this->request->getPost('kategori_judul'),
            'kategori_slug' => $slug,
        ]);

        if ($r) {
            $this->notif('Kategori Berhasil diubah.');
        } else {
            $this->notif('Kategori Gagal diubah.', 'error');
        }

        return redirect()->to(site_url('/nimda/pidato/kategori/'));
    }

    public function kategori_delete($id)
    {
        $r = $this->ketegoriModel->delete($id);
        if ($r) {
            $this->notif('Kategori Berhasil dihapus.');
        } else {
            $this->notif('Kategori Gagal dihapus.', 'error');
        }
        return redirect()->to(site_url('/nimda/pidato/kategori/'));
    }
}
