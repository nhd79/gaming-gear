<script language="javascript" type="text/jscript">
 	function thongbaoxoa(masp)
 	{
	 	chon=confirm('Bạn có muốn xóa sản phẩm này không?');
	 	if(chon==true)
			location.href = "Cart?maspxoa="+masp;
	}
</script>
<?php
if(isset($_SESSION["giohang"]))
{
	$giohang=$_SESSION["giohang"];
	  
	if(count($giohang)>0)
	{
		if(isset($_GET["maspxoa"]))
		{
			$maspxoa=$_GET["maspxoa"];
			unset($giohang[$maspxoa]);
			$_SESSION["giohang"]=$giohang;
		}
		if(isset($_POST["capnhat"]))
		{
			foreach($giohang as $sp)
			{
				$sl=$_POST["txtsl".$sp[0]];
				if($sl>0)
				 	$giohang[$sp[0]][2]=$sl;
			}
			$_SESSION["giohang"]=$giohang;
		}
	  	echo'<form method="post">
		<div class="container mb-4">
    			<div class="row">
        		<div class="col-12">
            		<div class="table-responsive">
                		<table class="table table-striped table-borderless">
							<thead class="bg-primary text-white">
								<tr>
								<th scope="col"> </th>
								<th scope="col">Stt</th>
								<th scope="col">Tên sản phẩm</th>
								<th scope="col">Số lượng</th>
								<th scope="col">Đơn giá</th>
								<th scope="col">Thành tiền</th>
								<th> </th>
                        		</tr>
							</thead>
							<tbody>';

	  	$stt=1;
	  	$tongtien=0;
	  	foreach($giohang as $sp)
	   	{
		   echo"<tr>
           <td></td>
		   <td>".$stt."</td>
		   <td>".$sp[1]."</td>
		   <td><input type='number' min='1' max='100' value='".$sp[2]."' name='txtsl".$sp[0]."'/></td><td>".number_format($sp[3])."</td>
		   <td>".number_format($sp[2]*$sp[3])."</td>
		   <td><a  style='color:white;appearance: button;-moz-appearance: button;-webkit-appearance:button;
     		padding: 7px 7px;' class='btn btn-sm btn-danger' href='#' onClick='thongbaoxoa(".$sp[0].")' ><i class='fa fa-trash'> </i></a></td></tr>";
		   $stt++;
           $tongtien+=$sp[2]*$sp[3];
		}
		echo"<tr><td align='right' colspan='7'><b class='text-danger'>Tổng tiền :".number_format($tongtien)." VND</b></td></tr>";
		echo"<tr><td align='center' colspan='7'><button type='submit' class='btn btn-primary btn-block btn-round col-lg-2' name='capnhat'>Cập nhật</button></td></tr>"; 
		echo"</tbody></table></div></div></div></div></form>";
	}
	else{
		echo "<script>alert('Bạn chưa chọn sản phẩm nào!')</script>";
		echo"<script>location.href = 'index.php';</script>";
	}
}
?>