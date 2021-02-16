<?php
$options = array(
	PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
	PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
);
$db = new PDO('mysql:host=localhost;dbname=gaminggear', 'root', '',$options);
if(isset($_POST["username"]))
{	
	$caul="select user_name from khachhang where 1";
	$bangkh=$db->query($caul);
	$tontai=0;
	foreach($bangkh as $kh)
	{
		if($_POST["username"]==$kh["user_name"]){
			$tontai=1;
		}
	}
	if($tontai!=1)
	{
		if($_POST["password"]==$_POST["password1"])
		{
			$caulenh="insert into khachhang(user_name,password,full_name,address,phone,email,avatar)
			values('".$_POST["username"]."','".$_POST["password"]."','".$_POST["name"]."','"
			.$_POST["address"]."','".$_POST["phone"]."','".$_POST["email"]."','user.png')";
			$db->exec($caulenh);
		echo"<script>alert('Đăng ký thành công!');</script>";
		echo"<script>location.href = 'index.php';</script>";
		}
		else {
		echo"<script>alert('Mật khẩu xác nhận không đúng!');</script>";
		echo"<script>location.href = 'index.php';</script>";
  		}
	}
	else{
		echo"<script>alert('Tài khoản đã tồn tại!');</script>";
		echo"<script>location.href = 'index.php';</script>";
	}
}
?>