<?php
// buat class hp
class hp
{
  protected function beli_hp()
  {
    return "Beli hp baru";
  }
}

// turunkan class hp ke asus
class asus extends hp
{
  protected function beli_asus()
  {
    return "Beli Asus M2 baru";
  }
}

// turunkan class asus ke cover
class cover extends asus
{
  protected function beli_cover()
  {
    return "Beli cover baru";
  }

  public function beli_semua()
  {
    $a = $this->beli_hp();
    $b = $this->beli_asus();
    $c = $this->beli_cover();
    return "$a <br /> $b <br /> $c";
  }
}

// buat objek dari class asus (instansiasi)
$gadget_baru = new cover();

//panggil method objek
echo $gadget_baru->beli_semua();
  
//$gadget_baru->beli_hp();
// Fatal error: Call to protected method hp::beli_hp()
