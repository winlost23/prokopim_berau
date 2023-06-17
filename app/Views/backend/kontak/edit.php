<?= $this->extend('backend/master/index') ?>

<?= $this->section('css') ?>
<?= $this->endSection() ?>

<?= $this->section('js') ?>
<script src="<?= base_url() ?>/plugins/tinymce/tinymce.min.js"></script>
<script src="<?= base_url() ?>/assets/pages/jquery.form-editor.init.js"></script>

<?= $this->endSection() ?>

<?= $this->section('content') ?>
<div class="container-fluid">
    <!-- Page-Title -->
    <div class="row">
        <div class="col-sm-12">
            <div class="page-title-box">
                <div class="float-right">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?= base_url() ?>/nimda">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="<?= base_url() ?>/nimda/kontak">Kontak</a></li>
                        <li class="breadcrumb-item active">Edit kontak</li>
                    </ol>
                </div>
                <h4 class="page-title">Edit kontak</h4>
            </div>
            <!--end page-title-box-->
        </div>
        <!--end col-->
    </div>
    <!-- end page title end breadcrumb -->
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="mt-0 header-title">Form Edit kontak</h4>
                    <p class="text-muted mb-3">Silahkan ubah form dibawah ini...</p>
                    <?= $validation->getErrors() ? $validation->listErrors('my_list') : '' ?>
                    <div class="general-label">
                        <form method="post" action="<?= base_url('nimda/kontak/update/' . $kontak->kontak_kami_id) ?>" enctype="multipart/form-data">
                            <?= csrf_field(); ?>
                            <input type="hidden" name="kontak_kami_id" value="<?= $kontak->kontak_kami_id ?>">
                            <div class="form-group row">
                                <label for="nama" class="col-sm-3 col-form-label">Nama</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control <?= ($validation->hasError('kontak_kami_nama')) ? 'is-invalid' : '' ?>" id="kontak_kami_nama" name="kontak_kami_nama" autofocus value="<?= (old('kontak_kami_nama')) ? old('kontak_kami_nama') : $kontak->kontak_kami_nama ?>">
                                    <div class="invalid-feedback">
                                        <?= $validation->getError('kontak_kami_nama'); ?>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="nama" class="col-sm-3 col-form-label">Email</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control <?= ($validation->hasError('kontak_kami_email')) ? 'is-invalid' : '' ?>" id="kontak_kami_email" name="kontak_kami_email" autofocus value="<?= (old('kontak_kami_email')) ? old('kontak_kami_email') : $kontak->kontak_kami_email ?>">
                                    <div class="invalid-feedback">
                                        <?= $validation->getError('kontak_kami_email'); ?>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="nama" class="col-sm-3 col-form-label">Judul</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control <?= ($validation->hasError('kontak_kami_judul')) ? 'is-invalid' : '' ?>" id="kontak_kami_judul" name="kontak_kami_judul" autofocus value="<?= (old('kontak_kami_judul')) ? old('kontak_kami_judul') : $kontak->kontak_kami_judul ?>">
                                    <div class="invalid-feedback">
                                        <?= $validation->getError('kontak_kami_judul'); ?>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="email" class="col-sm-3 col-form-label">Isi</label>
                                <div class="col-sm-9">
                                    <textarea id="elm1" name="kontak_kami_pesan" class="form-control <?= ($validation->hasError('kontak_kami_pesan')) ? 'is-invalid' : '' ?>" id="kontak_kami_pesan"><?= (old('kontak_kami_pesan')) ? old('kontak_kami_pesan') : $kontak->kontak_kami_pesan ?></textarea>
                                    <div class="invalid-feedback">
                                        <?= $validation->getError('kontak_kami_pesan'); ?>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-sm-9 ml-auto">
                                    <button type="submit" class="btn btn-gradient-primary">Submit</button>
                                    <a href="<?= base_url() ?>/nimda/kontak" class="btn btn-gradient-danger">Cancel</a>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
                <!--end card-body-->
            </div>
            <!--end card-->
        </div>
        <!--end col-->
    </div> <!-- end row -->

</div><!-- container -->
<?= $this->endSection() ?>