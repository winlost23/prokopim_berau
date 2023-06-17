<?= $this->extend('frontend/master/index') ?>

<?= $this->section('css') ?>

<?= $this->endSection() ?>

<?= $this->section('js') ?>
<script>
    $('.carousel').carousel({
        interval: 5000
    })
</script>
<?= $this->endSection() ?>

<?= $this->section('content') ?>
<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center">

    <div data-aos="zoom-out" data-aos-delay="100">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <?php
                $noindicator = 0;
                foreach ($dataslider as $d) : ?>
                    <li data-target="#carouselExampleIndicators" data-slide-to="<?= $noindicator; ?>" class="<?= ($noindicator == 0) ? 'active' : ''; ?>"></li>
                <?php
                    $noindicator++;
                endforeach; ?>

            </ol>
            <div class="carousel-inner">
                <?php
                $nogambar = 1;
                foreach ($dataslider as $d) : ?>
                    <div class="carousel-item <?= ($nogambar == 1) ? 'active' : ''; ?>">
                        <div class="carousel-caption d-none d-md-block">
                            <h5><?= $d->slider_judul_1 ?></h5>
                            <p><?= $d->slider_judul_2 ?></p>
                        </div>
                        <img src="<?= base_url() ?>/img/slider/<?= $d->slider_gambar ?>" class="d-block w-100" alt="...">
                    </div>
                <?php
                    $nogambar++;
                endforeach; ?>

            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>


</section><!-- End Hero -->

<main id="main">

    <section id="tabs" class="tabs">
        <div class="container" data-aos="fade-up">

            <ul class="nav nav-tabs row d-flex">
                <?php $notab = 1; ?>
                <?php foreach ($dataprofil as $d) : ?>
                    <li class="nav-item col-3">
                        <a class="nav-link <?= ($notab == 1) ? 'active show' : ''; ?>" data-toggle="tab" href="#tab-<?= $notab++; ?>">
                            <i class="ri-gps-line"></i>
                            <h4 class="d-none d-lg-block"><?= $d->profil_judul ?></h4>
                        </a>
                    </li>
                <?php endforeach; ?>

            </ul>

            <div class="tab-content">
                <?php $notab2 = 1; ?>
                <?php foreach ($dataprofil as $d) : ?>
                    <div class="tab-pane <?= ($notab2 == 1) ? 'active show' : ''; ?>" id="tab-<?= $notab2++; ?>">
                        <div class="row">
                            <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0" data-aos="fade-up" data-aos-delay="100">
                                <h3><?= $d->profil_judul ?></h3>
                                <p>
                                    <?php
                                    $isi_berita = htmlentities(strip_tags($d->profil_isi));
                                    $isi = substr($isi_berita, 0, 500);
                                    $isi = substr($isi_berita, 0, strrpos($isi, " "));
                                    ?>
                                    <?= $isi ?>
                                </p>
                                <a href="<?= base_url() ?>/profil/<?= $d->profil_slug ?>" type="button" class="btn btn-outline-danger">Selengkapnya <i class="bx bx-chevron-right"></i></a>

                            </div>
                            <div class="col-lg-6 order-1 order-lg-2 text-center" data-aos="fade-up" data-aos-delay="200">
                                <img src="<?= base_url('front') ?>/assets/img/tabs-1.jpg" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

        </div>
    </section><!-- End Tabs Section -->

    <section id="info" class="team section-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>INFO</h2>
                <p>TERBARU</p>
            </div>

            <div class="row">
                <?php foreach ($datainfo as $d) : ?>
                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                        <div class="member" data-aos="fade-up" data-aos-delay="100">
                            <div class="member-img">
                                <img src="<?= base_url('img/info') ?>/<?= $d->info_gambar ?>" class="img-fluid" alt="">

                            </div>
                            <div class="member-info">
                                <h4><a href="<?= base_url() ?>/info/<?= $d->kategori_slug ?>/<?= $d->info_slug ?>"><?= $d->info_judul ?></a></h4>
                                <span>
                                    <?php
                                    $isi_berita = htmlentities(strip_tags($d->info_isi));
                                    $isi = substr($isi_berita, 0, 100);
                                    $isi = substr($isi_berita, 0, strrpos($isi, " "));
                                    ?>
                                    <?= $isi ?>
                                </span>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>

            </div>

        </div>
    </section><!-- End Team Section -->

    <section id="berita" class="team">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>BERITA</h2>
                <p>TERBARU</p>
            </div>

            <div class="row">
                <?php foreach ($databerita as $d) : ?>
                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                        <div class="member" data-aos="fade-up" data-aos-delay="100">
                            <div class="member-img">
                                <img src="<?= base_url('img/berita') ?>/<?= $d->berita_gambar ?>" class="img-fluid" alt="">

                            </div>
                            <div class="member-info">
                                <h4><a href="<?= base_url() ?>/berita/<?= $d->kategori_slug ?>/<?= $d->berita_slug ?>"><?= $d->berita_judul ?></a></h4>
                                <span>
                                    <?php
                                    $isi_berita = htmlentities(strip_tags($d->berita_isi));
                                    $isi = substr($isi_berita, 0, 100);
                                    $isi = substr($isi_berita, 0, strrpos($isi, " "));
                                    ?>
                                    <?= $isi ?>
                                </span>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>

            </div>

        </div>
    </section><!-- End Team Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>GALERI</h2>
                <p></p>
            </div>

            <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">
                <?php foreach ($datagaleri as $d) : ?>
                    <div class="col-lg-4 col-md-6 portfolio-item">
                        <div class="portfolio-wrap">
                            <a href="<?= base_url() ?>/galeri/<?= $d->kategori_slug ?>" title="Selengkapnya"><img src="<?= base_url('img/galeri') ?>/<?= $d->kategori_gambar ?>" class="img-fluid" alt=""></a>
                            <div class="portfolio-info">
                                <h4><?= $d->kategori_judul ?></h4>
                                <div class="portfolio-links">
                                    <a href="<?= base_url('img/galeri') ?>/<?= $d->kategori_gambar ?>" data-gall="portfolioGallery" class="venobox" title="<?= $d->kategori_judul ?>"><i class="bx bx-plus"></i></a>
                                    <a href="<?= base_url() ?>/galeri/<?= $d->kategori_slug ?>" title="Selengkapnya"><i class="bx bx-link"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>

            </div>

            <div class="row">
                <div class="col-md-12">
                    <center><a href="<?= base_url() ?>/galeri" type="button" class="btn btn-outline-danger">Selengkapnya</a></center>
                </div>
            </div>

        </div>
    </section><!-- End Portfolio Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Kontak Kami</h2>
                <p></p>
            </div>

            <div class="row" data-aos="fade-up" data-aos-delay="100">

                <div class="col-lg-12">

                    <div class="row">
                        <div class="col-md-12">
                            <div class="info-box">
                                <i class="bx bx-map"></i>
                                <h3>Alamat Kami</h3>
                                <p><?= $pengaturan->pengaturan_alamat ?></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box mt-4">
                                <i class="bx bx-envelope"></i>
                                <h3>Email Kami</h3>
                                <p><?= $pengaturan->pengaturan_email ?></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box mt-4">
                                <i class="bx bx-phone-call"></i>
                                <h3>Telp Kami</h3>
                                <p><?= $pengaturan->pengaturan_telp ?></p>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <a href="<?= base_url() ?>/kontak" type="button" class="btn btn-danger btn-lg btn-block">Kirim Pesan</a>
                        </div>
                    </div>

                </div>



            </div>

        </div>
    </section><!-- End Contact Section -->

</main>
<?= $this->endSection() ?>