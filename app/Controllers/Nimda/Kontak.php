<?php

namespace App\Controllers\Nimda;

use App\Controllers\BaseController;
use App\Models\KontakModel;
use App\Libraries\Definisi;
use App\Models\PengaturanModel;
use App\Models\User;


class Kontak extends BaseController
{
    protected $halaman = 'backend/kontak/';
    //protected $model;

    public function __construct()
    {
        $this->kontakModel = new KontakModel();
        $this->userModel = new User();
        $this->pengaturanModel = new PengaturanModel();
    }

    public function index()
    {
        $data['title'] = 'Kontak Kami';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['kontak'] = $this->kontakModel->where('kontak_id_parent', NULL)->orderby('kontak_id', 'desc')->findAll();
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'index', $data);
    }

    public function balas($id)
    {
        $data['title'] = 'Edit Kontak';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['kontak'] = $this->kontakModel->find($id);
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'edit', $data);
    }

    public function update($id)
    {

        if (!$this->validate([
            'kontak_komentar' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Komentar harus diisi',
                ]
            ],
        ])) {
            // $validation = \Config\Services::validation();
            return redirect()->to(site_url('/nimda/kontak/balas/') . $id)->withInput();
        }
        $cek = $this->request->getPost('kontak_id_admin');
        if ($cek != 0) {
            $r = $this->kontakModel->save([
                'kontak_id' => $cek,
                'kontak_komentar' => $this->request->getPost('kontak_komentar'),
            ]);
            if ($r) {
                $this->notif('Kontak Balas berhasil diubah.');
            } else {
                $this->notif('Kontak Balas gagal diubah.', 'error');
            }
        } else {
            $r = $this->kontakModel->save([
                'kontak_id_parent' => $id,
                'kontak_sebagai' => '2',
                'kontak_komentar' => $this->request->getPost('kontak_komentar'),
            ]);
            $s = $this->kontakModel->save([
                'kontak_id' => $id,
                'kontak_show' => '1',
            ]);

            if ($r && $s) {
                $this->notif('Kontak Berhasil dibalas.');
            } else {
                $this->notif('Kontak Gagal dibalas.', 'error');
            }
        }




        return redirect()->to(site_url('/nimda/kontak'));
    }

    public function delete($id)
    {
        // $r = $this->kontakModel->delete($id);
        // if ($r) {
        //     $this->notif('Kontak Berhasil dihapus.');
        // } else {
        //     $this->notif('Kontak Gagal dihapus.', 'error');
        // }
        return redirect()->to(site_url('/nimda/kontak'));
    }
}
