<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Bappeda <?= $title ?></title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<?= base_url() ?>/img/<?= $pengaturan->pengaturan_favicon ?>" rel="icon">
  <link href="<?= base_url('front') ?>/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <?= $this->renderSection('css') ?>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?= base_url('front') ?>/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?= base_url('front') ?>/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="<?= base_url('front') ?>/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<?= base_url('front') ?>/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="<?= base_url('front') ?>/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="<?= base_url('front') ?>/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="<?= base_url('front') ?>/assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?= base_url('front') ?>/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Presento - v1.1.0
  * Template URL: https://bootstrapmade.com/presento-bootstrap-corporate-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <?= $this->include('frontend/master/header') ?>
  <!-- End Header -->

  <!-- #main -->
  <?= $this->renderSection('content') ?>
  <!-- End #main -->

  <!-- ======= Footer ======= -->
  <?= $this->include('frontend/master/footer') ?>
  <!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="<?= base_url('front') ?>/assets/vendor/jquery/jquery.min.js"></script>
  <script src="<?= base_url('front') ?>/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?= base_url('front') ?>/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="<?= base_url('front') ?>/assets/vendor/php-email-form/validate.js"></script>
  <script src="<?= base_url('front') ?>/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="<?= base_url('front') ?>/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="<?= base_url('front') ?>/assets/vendor/counterup/counterup.min.js"></script>
  <script src="<?= base_url('front') ?>/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<?= base_url('front') ?>/assets/vendor/venobox/venobox.min.js"></script>
  <script src="<?= base_url('front') ?>/assets/vendor/aos/aos.js"></script>
  <?= $this->renderSection('js') ?>

  <!-- Template Main JS File -->
  <script src="<?= base_url('front') ?>/assets/js/main.js"></script>

</body>

</html>