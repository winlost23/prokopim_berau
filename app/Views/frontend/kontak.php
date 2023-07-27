<?= $this->extend('frontend/master/index') ?>

<?= $this->section('css') ?>
<?= $this->endSection() ?>

<?= $this->section('js') ?>
<?= $this->endSection() ?>

<?= $this->section('content') ?>
<!-- block-wrapper-section
================================================== -->
<section class="block-wrapper left-sidebar">
    <div class="container">
        <div class="row">

            <div class="col-sm-8">

                <!-- block content -->
                <div class="block-content">

                    <!-- single-post box -->
                    <div class="single-post-box">
                        <!-- comment area box -->
                        <div class="comment-area-box">
                            <div class="title-section">
                                <h1><span>Kontak Kami</span></h1>
                            </div>
                            <ul class="comment-tree">
                                <?php

                                use App\Models\KontakModel;

                                $this->kontakModel = new KontakModel();
                                foreach ($konten as $d) :
                                    $balas = $this->kontakModel
                                        ->where('kontak_id_parent', $d->kontak_id)
                                        ->first(); ?>
                                    <li>
                                        <div class="comment-box">
                                            <img alt="" src="<?= base_url('img/img_avatar3.png') ?>">
                                            <div class="comment-content">
                                                <h4><?= $d->kontak_nama ?></h4>
                                                <h5><?= $d->kontak_pekerjaan ?></h5>
                                                <span><i class="fa fa-clock-o"></i><?= $d->created_at ?></span>
                                                <?= $d->kontak_komentar ?>
                                            </div>
                                        </div>
                                        <?php if ($balas) { ?>
                                            <ul class="depth">
                                                <li>
                                                    <div class="comment-box">
                                                        <img alt="" src="<?= base_url('img/welcome.png') ?>">
                                                        <div class="comment-content">
                                                            <h4>Admin</h4>
                                                            <span><i class="fa fa-clock-o"></i><?= $balas->created_at ?></span>
                                                            <?= $balas->kontak_komentar ?>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        <?php } ?>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    </div>
                    <!-- End comment area box -->
                    <!-- pagination box -->
                    <?= $pager->links('hal', 'paging') ?>
                    <!-- End Pagination box -->

                </div>
                <!-- End block content -->

            </div>

            <div class="col-sm-4">

                <?= $this->include('frontend/master/side') ?>

            </div>

        </div>

    </div>
</section>

<?= $this->endSection() ?>