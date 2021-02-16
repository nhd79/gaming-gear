<?php
if(isset($_REQUEST["maspmua"]))
{
	session_start();
	
	if(isset($_SESSION["giohang"])) 
		$Giohang=$_SESSION["giohang"];
	else
		//$Giohang="";
		$Giohang=array("0"=>array());
	$masp=$_REQUEST["maspmua"];
	$maloaisp=$_REQUEST["maloaisp"];
	if(isset($Giohang[$masp]))
 		$Giohang[$masp][2]++;
	else
	{
		include_once("xl_csdl.php");
		$bang=Doc_Bang("select * from sanpham where id=".$masp);
		foreach($bang as $sp)
		{
			$sanpham=array($sp[0],$sp[2],1,$sp[3],$sp[4]);
			$Giohang[$masp]=$sanpham;
		}
	}
	unset($Giohang["0"]);
	$_SESSION["giohang"]=$Giohang;
	echo"<script>location.href = 'index.php?maloai=".$maloaisp."';</script>";
}
?>