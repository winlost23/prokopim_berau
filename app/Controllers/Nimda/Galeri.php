<?php

namespace App\Controllers\Nimda;

use App\Controllers\BaseController;
use App\Models\GaleriModel;
use App\Models\KategoriModel;
use App\Libraries\Definisi;
use App\Models\PengaturanModel;
use App\Models\User;

class Galeri extends BaseController
{
    protected $halaman = 'backend/galeri/';
    //protected $model;

    public function __construct()
    {
        $this->galeriModel = new GaleriModel();
        $this->ketegoriModel = new KategoriModel();
        $this->userModel = new User();
        $this->pengaturanModel = new PengaturanModel();
    }

    public function index()
    {
        $data['title'] = 'Galeri';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        // $data['galeri'] = $this->galeriModel->getAll();
        $data['kategori'] = $this->ketegoriModel
            ->join('users', 'kategori.users_id = users.users_id')
            ->where('kategori.kategori_jenis', 'galeri')
            ->orderby('kategori.kategori_id', 'desc')
            ->findAll();
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'index', $data);
    }

    public function detail($id)
    {
        $data['title'] = 'Detail Galeri';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['galeri'] = $this->galeriModel
            ->join('users', 'galeri.users_id = users.users_id')
            ->join('kategori', 'galeri.kategori_id = kategori.kategori_id')
            ->where('galeri.kategori_id', $id)
            ->orderby('galeri.galeri_id', 'desc')
            ->findAll();
        $data['kategori'] = $this->ketegoriModel->find($id);
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'detail', $data);
    }

    public function add()
    {
        $data['title'] = 'Tambah Galeri';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['kategori'] = $this->ketegoriModel->where('kategori_jenis', 'galeri')->findAll();
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'add', $data);
    }

    public function addDetail($id)
    {
        $data['title'] = 'Tambah Detail Galeri';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['kategori'] = $this->ketegoriModel->where('kategori_jenis', 'galeri')->find($id);
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'adddetail', $data);
    }

    public function save()
    {
        // validation input
        if (!$this->validate([
            'kategori_judul' => [
                'rules' => 'required|is_unique[kategori.kategori_judul]',
                'errors' => [
                    'required' => '{field} Judul galeri harus diisi',
                    'is_unique' => '{field} Judul galeri sudah terdaftar'
                ]
            ],
            'kategori_gambar' => [
                'rules' => 'max_size[kategori_gambar,1024]|is_image[kategori_gambar]|mime_in[kategori_gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar tidak boleh lebih dari 1M',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            return redirect()->to(site_url('/nimda/galeri/add'))->withInput();
        }
        //ambil gambar
        $fileSampul = $this->request->getFile('kategori_gambar');
        //apakah tidak ada gambar yang diupload
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.jpg';
        } else {
            //generate nama sampul random
            $namaSampul = $fileSampul->getRandomName();
            //pindahkan file ke folder img
            $fileSampul->move('img/galeri', $namaSampul);
        }

        $slug = url_title($this->request->getPost('kategori_judul'), '-', true);
        $r = $this->ketegoriModel->save([
            'users_id' => session()->userid,
            'kategori_judul' => $this->request->getPost('kategori_judul'),
            'kategori_slug' => $slug,
            'kategori_gambar' => $namaSampul,
            'kategori_jenis' => 'galeri',
        ]);
        if ($r) {
            $this->notif('galeri Baru Berhasil disimpan.');
        } else {
            $this->notif('galeri Gagal disimpan.', 'error');
        }

        return redirect()->to(site_url('/nimda/galeri'));
    }

    public function saveDetail($id)
    {
        // validation input
        if (!$this->validate([
            'galeri_judul' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Judul galeri harus diisi'
                ]
            ],
            'galeri_gambar' => [
                'rules' => 'max_size[galeri_gambar,1024]|is_image[galeri_gambar]|mime_in[galeri_gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar tidak boleh lebih dari 1M',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            return redirect()->to(site_url('/nimda/galeri/addDetail/') . $id)->withInput();
        }
        //ambil gambar
        $fileSampul = $this->request->getFile('galeri_gambar');
        //apakah tidak ada gambar yang diupload
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.jpg';
        } else {
            //generate nama sampul random
            $namaSampul = $fileSampul->getRandomName();
            //pindahkan file ke folder img
            $fileSampul->move('img/galeri', $namaSampul);
        }

        $r = $this->galeriModel->save([
            'kategori_id' => $id,
            'users_id' => session()->userid,
            'galeri_judul' => $this->request->getPost('galeri_judul'),
            'galeri_gambar' => $namaSampul,
        ]);
        if ($r) {
            $this->notif('Galeri Baru Berhasil disimpan.');
        } else {
            $this->notif('Galeri Gagal disimpan.', 'error');
        }

        return redirect()->to(site_url('/nimda/galeri/detail/') . $id);
    }

    public function edit($id)
    {
        $data['title'] = 'Edit Galeri';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['kategori'] = $this->ketegoriModel->where('kategori_jenis', 'galeri')->find($id);
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'edit', $data);
    }

    public function editDetail($idGaleri, $idKategori)
    {
        $data['title'] = 'Edit Detail Galeri';

        $data['users'] = $this->userModel->find(session()->userid);
        $data['pengaturan'] = $this->pengaturanModel->first();

        $def = new Definisi();
        $data['kategori'] = $this->ketegoriModel->where('kategori_jenis', 'galeri')->find($idKategori);
        $data['galeri'] = $this->galeriModel->find($idGaleri);
        $data['level'] = $def->level();
        $data['validation'] = \Config\Services::validation();
        return view($this->halaman . 'editdetail', $data);
    }

    public function update($id)
    {
        if (!$this->validate([
            'kategori_judul' => [
                'rules' => 'required|is_unique[kategori.kategori_judul]',
                'errors' => [
                    'required' => '{field} Judul harus diisi',
                    'is_unique' => '{field} Judul sudah terdaftar'
                ]
            ],
            'kategori_gambar' => [
                'rules' => 'max_size[kategori_gambar,1024]|is_image[kategori_gambar]|mime_in[kategori_gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar tidak boleh lebih dari 1M',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            return redirect()->to(site_url('/nimda/galeri/edit/') . $this->request->getPost('kategori_id'))->withInput();
        }

        $fileSampul = $this->request->getFile('kategori_gambar');
        //cek gambar, apakah tetap gambar lama
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getPost('kategori_gambar_lama');
        } else {
            $namaSampul = $fileSampul->getRandomName();
            //pindahkan gambar
            $fileSampul->move('img/galeri', $namaSampul);
            //hapus file gambar lama
            unlink('img/galeri/' . $this->request->getPost('kategori_gambar_lama'));
        }

        $slug = url_title($this->request->getPost('kategori_judul'), '-', true);
        $r = $this->ketegoriModel->save([
            'kategori_id' => $id,
            'users_id' => session()->userid,
            'kategori_judul' => $this->request->getPost('kategori_judul'),
            'kategori_slug' => $slug,
            'kategori_gambar' => $namaSampul,
        ]);

        if ($r) {
            $this->notif('Galeri Berhasil diubah.');
        } else {
            $this->notif('Galeri Gagal diubah.', 'error');
        }

        return redirect()->to(site_url('/nimda/galeri'));
    }

    public function updateDetail($idGaleri, $idKategori)
    {
        if (!$this->validate([
            'galeri_judul' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Judul harus diisi',
                    'is_unique' => '{field} Judul sudah terdaftar'
                ]
            ],
            'galeri_gambar' => [
                'rules' => 'max_size[galeri_gambar,1024]|is_image[galeri_gambar]|mime_in[galeri_gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar tidak boleh lebih dari 1M',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            return redirect()->to(site_url('/nimda/galeri/editDetail/') . $idGaleri . '/' . $idKategori)->withInput();
        }

        $fileSampul = $this->request->getFile('galeri_gambar');
        //cek gambar, apakah tetap gambar lama
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getPost('galeri_gambar_lama');
        } else {
            $namaSampul = $fileSampul->getRandomName();
            //pindahkan gambar
            $fileSampul->move('img/galeri', $namaSampul);
            //hapus file gambar lama
            unlink('img/galeri/' . $this->request->getPost('galeri_gambar_lama'));
        }

        $slug = url_title($this->request->getPost('galeri_judul'), '-', true);
        $r = $this->galeriModel->save([
            'galeri_id' => $idGaleri,
            'users_id' => session()->userid,
            'galeri_judul' => $this->request->getPost('galeri_judul'),
            'galeri_gambar' => $namaSampul,
        ]);

        if ($r) {
            $this->notif('Galeri Berhasil diubah.');
        } else {
            $this->notif('Galeri Gagal diubah.', 'error');
        }

        return redirect()->to(site_url('/nimda/galeri/detail/') . $idKategori);
    }

    public function delete($id)
    {
        $r = $this->ketegoriModel->delete($id);
        if ($r) {
            $this->notif('Galeri Berhasil dihapus.');
        } else {
            $this->notif('Galeri Gagal dihapus.', 'error');
        }
        return redirect()->to(site_url('/nimda/galeri'));
    }

    public function deleteDetail($idGaleri, $idKategori)
    {
        $r = $this->galeriModel->delete($idGaleri);
        if ($r) {
            $this->notif('Galeri Berhasil dihapus.');
        } else {
            $this->notif('Galeri Gagal dihapus.', 'error');
        }
        return redirect()->to(site_url('/nimda/galeri/detail/') . $idKategori);
    }
}
