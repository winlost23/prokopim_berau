<header id="header" class="fixed-top">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-xl-10 d-flex align-items-center">
                <h1 class="logo mr-auto"><a href="<?= base_url('home/') ?>"><img src="<?= base_url() ?>/img/<?= $pengaturan->pengaturan_logo_header ?>" width="200" alt=""></a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt=""></a>-->

                <nav class="nav-menu d-none d-lg-block">
                    <ul>
                        <li><a href="<?= ($menu == "kedua") ? base_url() . '/home' : '#header'; ?>">Home</a></li>
                        <li class="drop-down"><a href="<?= ($menu == "kedua") ? base_url() . '/home#tabs' : '#tabs'; ?>">Profil</a>
                            <ul>
                                <?php foreach ($profil as $p) : ?>
                                    <li><a href="<?= ($menu == "kedua") ? base_url() . '/home#tabs' : '#tabs'; ?>"><?= $p->kategori_judul ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                        </li>
                        <li class="drop-down"><a href="<?= ($menu == "kedua") ? base_url() . '/home#info' : '#info'; ?>">Info</a>
                            <ul>
                                <?php foreach ($info as $p) : ?>
                                    <li><a href="<?= base_url('info/' . $p->kategori_slug) ?>"><?= $p->kategori_judul ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                        </li>
                        <li class="drop-down"><a href="<?= ($menu == "kedua") ? base_url() . '/home#berita' : '#berita'; ?>">Berita</a>
                            <ul>
                                <?php foreach ($berita as $p) : ?>
                                    <li><a href="<?= base_url('berita/' . $p->kategori_slug) ?>"><?= $p->kategori_judul ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                        </li>
                        <li><a href="<?= ($menu == "kedua") ? base_url() . '/home#portfolio' : '#portfolio'; ?>">Galeri</a>
                        </li>

                        <li><a href="<?= ($menu == "kedua") ? base_url() . '/home#contact' : '#contact'; ?>">Kontak Kami</a></li>
                    </ul>
                </nav><!-- .nav-menu -->

            </div>
        </div>

    </div>
</header>