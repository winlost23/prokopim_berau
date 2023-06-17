<div class="sidebar">

    <h3 class="sidebar-title">Info Terbaru</h3>
    <div class="sidebar-item recent-posts">
        <?php foreach ($infoslide as $d) : ?>
            <div class="post-item clearfix">
                <img src="<?= base_url() ?>/img/info/<?= $d->info_gambar ?>" alt="">
                <h4><a href="<?= base_url() ?>/info/<?= $d->kategori_slug ?>/<?= $d->info_slug ?>"><?= $d->info_judul ?></a></h4>
                <time class="icofont-folder"> <?= $d->kategori_judul ?> </time>
            </div>
        <?php endforeach; ?>


        <br><br>

        <h3 class="sidebar-title">Berita Terbaru</h3>
        <div class="sidebar-item recent-posts">
            <?php foreach ($beritaslide as $d) : ?>
                <div class="post-item clearfix">
                    <img src="<?= base_url() ?>/img/berita/<?= $d->berita_gambar ?>" alt="">
                    <h4><a href="<?= base_url() ?>/berita/<?= $d->kategori_slug ?>/<?= $d->berita_slug ?>"><?= $d->berita_judul ?></a></h4>
                    <time class="icofont-folder"> <?= $d->kategori_judul ?> </time>
                </div>
            <?php endforeach; ?>



        </div><!-- End sidebar recent posts-->



    </div><!-- End sidebar -->