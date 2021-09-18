<?php
if(!$link=mysqli_connect("localhost","root"," ","trenbilet")){
    echo 'Bağlantı kurulamadı';
}
function menukaydet($link, $sorgu){
if (!$cevap=mysqli_query($link, $sorgu)) {
    echo 'Sorgu hatası';
}
}

?>
