<?php
  $name = $_SESSION["tenkh"];
  $name2 = "Admin";
  if($name == $name2){
    echo'<li class="nav-item active">';
    echo'<a class="nav-link" href="AddProduct.php" data-tooltip="tooltip" data-placement="bottom" title="Thêm sản phẩm"><i class="fas fa-plus"></i></a>';
    echo'</li>';
  }
  else{
    echo'<li class="nav-item active">';
    echo'<a class="nav-link" href="User.php" data-tooltip="tooltip" data-placement="bottom" title="Khách hàng"><i class="fas fa-user"></i></a>';
    echo'</li>';
  }
?>
<li class="nav-item active">
  <a class="nav-link" href="index.php?thoatdn=1" data-tooltip="tooltip" data-placement="bottom" title="Đăng xuất"><i class="fas fa-sign-out-alt"></i></a>
</li>