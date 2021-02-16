<li class="nav-item active">
    <a class="nav-link" data-tooltip="tooltip" data-placement="bottom" title="Đăng ký" data-toggle="modal" data-target="#signupModal"><i class="fas fa-user-plus"></i></a>
</li>
<li class="nav-item active">
    <a class="nav-link" data-tooltip="tooltip" data-placement="bottom" title="Đăng nhập" data-toggle="modal" data-target="#loginModal"><i class="fas fa-sign-in-alt"></i></a>
</li>
<?php
if(isset($_POST["username"]))
{
	include_once("xl_csdl.php");
	$username=$_POST["username"];
	$password=$_POST["password"];
	$caul="select * from khachhang where user_name='".$username."' and password='".$password."'";
	$bangkh=Doc_Bang($caul);
	if($bangkh->rowCount()>0)
	{
		foreach($bangkh as $kh)
	 	{
	  		$_SESSION["tenkh"]=$kh["full_name"];
		  	$_SESSION["makh"]=$kh["id"];
		  	$_SESSION["email"]=$kh["email"];
		  	$_SESSION["dienthoai"]=$kh["phone"];
			$_SESSION["diachi"]=$kh["address"];
			$_SESSION["hinh"]=$kh["avatar"];
		 }
		echo"<script>location.href = 'index.php';</script>";
	}
	else
	 	echo"<script>alert('Đăng nhập sai!');</script>";
}
?>