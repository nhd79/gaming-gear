<?php
	include_once("xl_csdl.php");
	$maloai=0;
	if(isset($_GET["maloai"]))
	$maloai=$_GET["maloai"];
	if($maloai==0)
		$bangsp=Doc_Bang("select * from sanpham");
	else 
		$bangsp=Doc_Bang("select * from sanpham where category_id=".$maloai);

	foreach($bangsp as $sanpham)
	{
    echo"<div class='col-lg-4 col-md-6 mb-4'>
            <div class='card h-100'>
              <a href='Detail.php?masp=".$sanpham[0]."'><img class='card-img-top' src='images/".$sanpham[4]."' alt=''></a>
              <div class='card-body'>
                <h4 class='card-title'>
                  <a href='Detail.php?masp=".$sanpham[0]."'>".$sanpham[2]."</a>
                </h4>
                <h5 style='color:red;'>".number_format($sanpham[3])." VND &nbsp;
                  <a href='xl_giohang.php?maspmua=".$sanpham[0]."&&maloaisp=".$sanpham[1]."'><i class='fas fa-cart-plus'></i></a>
                </h5>   
                <p class='card-text'>".$sanpham[5]."</p>
                <p class='card-text'>".$sanpham[6]."</p>
                <p class='card-text'>".$sanpham[7]."</p>
                <p class='card-text'>".$sanpham[8]."</p>
                <p class='card-text'>".$sanpham[9]."</p>
              </div>
              <div class='card-footer'>
                <small class='text-warning'>".$sanpham[10]."</small>
              </div>
            </div>
          </div>";
	}
	
?>