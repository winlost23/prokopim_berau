<footer id="footer">

    <div class="footer-top">
        <div class="container">
            <div class="row">

                <div class="col-lg-3 col-md-6 footer-contact">
                    <h3><img src="<?= base_url() ?>/img/<?= $pengaturan->pengaturan_logo_footer ?>" width="150" alt=""></h3>
                    <p>
                        <?= $pengaturan->pengaturan_alamat ?> <br><br>
                        <strong>Phone:</strong> <?= $pengaturan->pengaturan_telp ?><br>
                        <strong>Fax:</strong> <?= $pengaturan->pengaturan_fax ?><br>
                        <strong>Email:</strong> <?= $pengaturan->pengaturan_email ?><br>
                    </p>
                </div>

                <div class="col-lg-2 col-md-6 footer-links">
                    <h4>Menu</h4>
                    <ul>
                        <li><i class="bx bx-chevron-right"></i> <a href="<?= base_url('home/') ?>">Home</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Galeri</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="<?= base_url('kontak') ?>">Kontak Kami</a></li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-6 footer-links">
                    <h4>Info</h4>
                    <ul>
                        <?php foreach ($info as $p) : ?>
                            <li><i class="bx bx-chevron-right"></i><a href="<?= base_url('info/' . $p->kategori_slug) ?>"><?= $p->kategori_judul ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-6 footer-links">
                    <h4>Berita</h4>
                    <ul>
                        <?php foreach ($berita as $p) : ?>
                            <li><i class="bx bx-chevron-right"></i><a href="<?= base_url('berita/' . $p->kategori_slug) ?>"><?= $p->kategori_judul ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-6 footer-links">
                    <h4>Statistik User</h4>
                    <strong>Hari ini :</strong> <?= $hariini ?><br>
                    <strong>Bulan ini :</strong> <?= $bulanini ?><br>
                    <strong>Tahun ini :</strong> <?= $tahunini ?><br>
                    <strong>Online :</strong> <?= $online->usersonline_ip ?>
                    <br><br>
                    <h4>Info User</h4>
                    <strong>Browser :</strong> <?= session()->browser ?><br>
                    <strong>OS :</strong> <?= session()->os ?><br>
                    <strong>IP :</strong> <?= session()->ip ?><br>
                </div>

            </div>
        </div>
    </div>

    <div class="container d-md-flex py-4">

        <div class="mr-md-auto text-center text-md-left">
            <div class="copyright">
                &copy; Copyright <strong><span><?= $pengaturan->pengaturan_footer ?></span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/presento-bootstrap-corporate-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
        <div class="social-links text-center text-md-right pt-3 pt-md-0">
            <a href="<?= $pengaturan->pengaturan_twitter ?>" class="twitter" target="_blank"><i class="bx bxl-twitter"></i></a>
            <a href="<?= $pengaturan->pengaturan_facebook ?>" class="facebook" target="_blank"><i class="bx bxl-facebook"></i></a>
            <a href="<?= $pengaturan->pengaturan_instagram ?>" class="instagram" target="_blank"><i class="bx bxl-instagram"></i></a>
            <a href="<?= $pengaturan->pengaturan_youtube ?>" class="youtube" target="_blank"><i class="bx bxl-youtube"></i></a>
        </div>
    </div>
</footer>