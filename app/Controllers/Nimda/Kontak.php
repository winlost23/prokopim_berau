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
        $data['kontak'] = $this->kontakModel->findAll();
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'index', $data);
    }

    /*public function add()
    {
        $def = new Definisi();
        $data['kategori'] = $this->ketegoriModel->where('kategori_jenis', 'kontak')->findAll();
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'add', $data);
    }

    public function save()
    {
        // validation input
        if (!$this->validate([
            'kontak_judul' => [
                'rules' => 'required|is_unique[kontak.kontak_judul]',
                'errors' => [
                    'required' => '{field} Judul kontak harus diisi',
                    'is_unique' => '{field} Judul kontak sudah terdaftar'
                ]
            ],
            'kontak_isi' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Isi kontak harus diisi',
                ]
            ],
            'kontak_gambar' => [
                'rules' => 'max_size[kontak_gambar,1024]|is_image[kontak_gambar]|mime_in[kontak_gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar tidak boleh lebih dari 1M',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            return redirect()->to('/nimda/kontak/add')->withInput();
        }
        //ambil gambar
        $fileSampul = $this->request->getFile('kontak_gambar');
        //apakah tidak ada gambar yang diupload
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.jpg';
        } else {
            //generate nama sampul random
            $namaSampul = $fileSampul->getRandomName();
            //pindahkan file ke folder img
            $fileSampul->move('img/kontak', $namaSampul);
        }


        $slug = url_title($this->request->getVar('kontak_judul'), '-', true);
        $r = $this->kontakModel->save([
            'users_id' => session()->userid,
            'kategori_id' => $this->request->getVar('kategori_id'),
            'kontak_judul' => $this->request->getVar('kontak_judul'),
            'kontak_slug' => $slug,
            'kontak_isi' => $this->request->getVar('kontak_isi'),
            'kontak_gambar' => $namaSampul,
        ]);
        if ($r) {
            $this->notif('kontak Baru Berhasil disimpan.');
        } else {
            $this->notif('kontak Gagal disimpan.', 'error');
        }

        return redirect()->to('/nimda/kontak');
    }*/

    public function edit($id)
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
            return redirect()->to(site_url('/nimda/kontak/edit/') . $this->request->getPost('kontak_kami_id'))->withInput();
        }

        $r = $this->kontakModel->save([
            'kontak_kami_id' => $id,
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

        return redirect()->to(site_url('/nimda/kontak'));
    }

    public function delete($id)
    {
        $r = $this->kontakModel->delete($id);
        if ($r) {
            $this->notif('Kontak Berhasil dihapus.');
        } else {
            $this->notif('Kontak Gagal dihapus.', 'error');
        }
        return redirect()->to(site_url('/nimda/kontak'));
    }
}
