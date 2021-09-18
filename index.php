<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
	<title></title>
</head>

<body>


<legend><h3>Kişisel Bilgiler</h3></legend>

<table>
    <tbody><tr><td>Ad Soyad : </td><td><input type="text"></td></tr>
    <tr><td>Doğum Tarihi : </td><td><input type="text"></td></tr>
</tbody></table>



<br>



<legend><h3>İletişim Bilgileri</h3></legend>

<table>
    <tbody><tr><td>Telefonu : </td><td><input type="text"></td></tr>
    <tr><td>Adresi : </td><td><textarea style="margin: 0px; width: 162px; height: 52px;"></textarea></td></tr>
</tbody></table>

<?php
include 'dbbaglanti.php';
if (empty($_POST["kisisayisi"])){

?>
<form method="POST" action="index.php">
<legend><h3>Ulaşım Bilgileri</h3></legend>
Vagon Seçiniz:	
<select name='secim'>
	<option>Vagon 1</option>
	<option>Vagon 2</option>
	<option>Vagon 3</option>
	<option>Vagon 4</option>


</select>

<br>
<table>
    <tbody><tr><td>Kişi Sayısı : </td><td>
<div class="form-group">
    	<input type="text" name="kisisayisi" class="form-control" id="exampleInputEmail1"></td></tr>
    </div>
</tbody></table>

<button type="submit" class="btn btn-primary">Bilet Al</button>
<?php
}
else {if(isset($_POST['secim'])){
	$vagonsecim=$_POST['secim'];
	$w=(integer)$vagonsecim;
	}

	$kisi=$_POST["kisisayisi"];
	$sorgu='select doluluk from vagon1';
$Sonuclar = mysqli_query($link,$sorgu);
    $doluluk = array();
    if(mysqli_num_rows($Sonuclar) > 0) {
        while($Sonuc = mysqli_fetch_object($Sonuclar)){
            $doluluk = array($Sonuc->doluluk);
            
        }
    }
    $sorgu='select satilan from vagon1';
$Sonuclar = mysqli_query($link,$sorgu);
    $satilan = array();
    if(mysqli_num_rows($Sonuclar) > 0) {
        while($Sonuc = mysqli_fetch_object($Sonuclar)){
            $satilan = array($Sonuc->satilan);
           
    }}

    $x=(integer)$doluluk[0];
    $y=(integer)$satilan[0];
    $a=$x-$y;
    $c=(integer)$kisi;
    
    
if ($x>$y && $a>=$c ) {
	echo "Biletiniz alındı";
	
	$b=$y+$c;
	switch ($vagonsecim) {
		case 'Vagon 1':
		$sorgu='UPDATE vagon1 SET satilan=("'.$b.'")';
		$sonuc=menukaydet($link,$sorgu);
		echo $sonuc;

			break;
		case 'Vagon 2':
			$sorgu='UPDATE vagon2 SET satilan=("'.$b.'")';
		$sonuc=menukaydet($link,$sorgu);
		echo $sonuc;

		break;
		case 'Vagon 3':
			$sorgu='UPDATE vagon3 SET satilan=("'.$b.'")';
		$sonuc=menukaydet($link,$sorgu);
		echo $sonuc;
		break;
		
		case 'Vagon 4':
			$sorgu='UPDATE vagon4 SET satilan=("'.$b.'")';
		$sonuc=menukaydet($link,$sorgu);
		echo $sonuc;
		
		
		default:
			
			break;
	}
	
}

else
echo"Bu vagondaki kapasitesi dolmuştur diğer vagonlara bakın.";

}





?>
</form>
</body>
</html>
