<?= $this->extend('frontend/master/index') ?>

<?= $this->section('css') ?>
<?= $this->endSection() ?>

<?= $this->section('js') ?>
<?= $this->endSection() ?>

<?= $this->section('content') ?>

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <ol>
                <li><a href="<?= base_url() ?>/home">Home</a></li>
                <li>Berita</li>
                <li><a href="<?= base_url() ?>/berita/<?= $dberita->kategori_slug ?>"><?= $dberita->kategori_slug ?></a></li>
                <li><?= $databeritadetail->berita_slug ?></li>
            </ol>
            <h2><?= $databeritadetail->berita_judul ?></h2>

        </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Single Section ======= -->
    <section id="blog" class="blog">
        <div class="container" data-aos="fade-up">

            <div class="row">

                <div class="col-lg-8 entries">

                    <article class="entry entry-single">

                        <div class="entry-img">
                            <img src="<?= base_url() ?>/img/berita/<?= $databeritadetail->berita_gambar ?>" alt="" class="img-fluid">
                        </div>

                        <h2 class="entry-title">
                            <?= $databeritadetail->berita_judul ?>
                        </h2>



                        <div class="entry-content">
                            <?= $databeritadetail->berita_isi ?>

                        </div>

                        <div class="entry-footer clearfix">


                        </div>

                    </article><!-- End blog entry -->



                </div><!-- End blog entries list -->

                <div class="col-lg-4">


                    <?= $this->include('frontend/master/side') ?>


                </div><!-- End blog sidebar -->

            </div>

        </div>
    </section><!-- End Blog Single Section -->

</main><!-- End #main -->
<?= $this->endSection() ?>