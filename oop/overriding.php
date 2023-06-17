<?php
// Parent Class
class Hewan
{
  public $namahewan;

  public function Jalan($namahewan)
  {
    echo $namahewan . " : hewan ini berjalan.";
  }
}

// Child Class
class Burung extends Hewan
{
  public $namahewan;

  public function Jalan($namahewan)
  {
    echo $namahewan . " : hewan ini terbang.";
  }
}

// Mengeksekusi Object
$merpati = new Burung;
$merpati->Jalan('Merpati');
