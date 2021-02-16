<?php
if(isset($_SESSION["giohang"]))
{
	$giohang=$_SESSION["giohang"];
	if(count($giohang)>0)
	{
		$sl=0;
	  	$tongtien=0;
	  	foreach($giohang as $sp)
	   	{
		  	$sl=$sl+$sp[2];
            $tongtien+=$sp[2]*$sp[3];
		}
		echo"<br>
		<div class='list-group-item text-primary text-center'>
			<h5>Giỏ hàng</h5>
		</div>
		<div class='list-group-item'>
			Số lượng: ".$sl."
		</div>
		<div class='list-group-item'>
			Tổng tiển : ".number_format($tongtien)."
		</div>
		<div class='list-group-item'>
			<a href='Cart.php'>Chi tiết</a>
		</div>";
	}
}
?>