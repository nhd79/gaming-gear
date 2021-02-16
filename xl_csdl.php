<?php
function Doc_Bang($sql)
{
	$options = array(
		PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
		PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
	);
	$db = new PDO('mysql:host=localhost;dbname=gaminggear', 'root', '',$options);
	$bang=$db->query($sql);
	return $bang;
}

function Ghi_Du_Lieu($sql)
{
	
	$options = array(
		PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
		PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
	);

	$db = new PDO('mysql:host=localhost;dbname=gaminggear', 'root', '',$options);
	try{
		$db->beginTransaction();
		$db->exec($sql);
	
		$db->commit();

	}
	catch(PDOExecption $e){
	$db->rollBack();
	return -1;
	}
}
?>