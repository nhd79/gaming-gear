<?php session_start();
  if(isset($_REQUEST["thoatdn"]))
  {
    session_destroy();
      echo"<script>location.href = 'index.php';</script>";
  }
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
  
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top py-1">
    <div class="container">
    <a class="navbar-brand text-center" href="index.php"><img src="images/logo4.png" alt="Website's Logo" height="45"></a>
      <div class="navbar-text text-white">
        Gaming Gear
      </div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarResponsive">
        
        <ul class="navbar-nav ml-auto">
          <!--<form class="form-inline">
            <input class="form-control" type="text" placeholder="Search" aria-label="Search">
          </form>-->
          <form class="form-inline" id="searchform" name="searchform" action="Search.php" method="post">
            <input class="form-control mr-sm-2" name="tensp" id="tensp" type="text" placeholder="Tìm kiếm" value="<?php echo $_POST["tensp"];?>">
            <button class="btn btn-light" type="submit" style="color:rgb(0, 123, 255);"><i class="fas fa-search"></i></button>
          </form>
          <li class="nav-item active">
            <a class="nav-link" href="index.php" data-tooltip="tooltip" data-placement="bottom" title="Trang chủ"><i class='fas fa-home'></i>
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#footer" data-tooltip="tooltip" data-placement="bottom" title="Thông tin"><i class="fas fa-info-circle"></i></a>
          </li>  
          <li class="nav-item active">
            <a class="nav-link" href="Cart.php" data-tooltip="tooltip" data-placement="bottom" title="Giỏ hàng"><i class="fas fa-shopping-cart"></i></a>
          </li>
          <?php
            if(isset($_SESSION["tenkh"]))
              include_once("Logout.php");
            else
              include_once("Login.php");
          ?>
        </ul>
      </div>
    </div>
    <script>
      $(document).ready(function(){
        $('[data-tooltip="tooltip"]').tooltip();
        $('#loginModal').modal('hide');
        $('#signupModal').modal('hide');
      });
      function hideLoginModal() { 
        $('#loginModal').modal('hide');
      }
    </script>
  </nav>
  <!-- Login Modal -->
  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header border-bottom-0">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="form-title text-center">
            <h4>Đăng nhập</h4>
          </div>
          <div class="d-flex flex-column text-center">
            <form id="form1" name="form1" method="post" action="index.php">
              <div class="form-group">
                <input type="text" name="username" class="form-control" id="username"placeholder="Tên đăng nhập...">
              </div>
              <div class="form-group">
                <input type="password" name="password" class="form-control" id="password" placeholder="Mật khẩu...">
              </div>
              <button type="submit" name="login" class="btn btn-primary btn-block btn-round">Đăng nhập</button>
            </form>
          </div>
        </div>
        <div class="modal-footer d-flex justify-content-center">
          <div class="signup-section">Chưa có tài khoản? <a data-toggle="modal" data-target="#signupModal" onclick="hideLoginModal()" class="text-primary"> Đăng ký tại đây</a>.</div>
        </div>
      </div>
    </div>
  </div>
  <!-- Sign up Modal -->
  <div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header border-bottom-0">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="form-title text-center">
            <h4>Đăng ký</h4>
          </div>
          <div class="d-flex flex-column text-center">
            <form action="Signup.php" method="post" enctype="multipart/form-data" name="form2">
              <div class="form-group">
                <input type="text" name="username" class="form-control" id="username" placeholder="Tên đăng nhập...">
              </div>
              <div class="form-group">
                <input type="password" name="password" class="form-control" id="password" placeholder="Mật khẩu...">
              </div>
              <div class="form-group">
                <input type="password" name="password1" class="form-control" id="password1" placeholder="Xác nhận mật khẩu...">
              </div>
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Họ tên...">
              </div>
              <div class="form-group">
                <input type="text" name="email" class="form-control" id="email" placeholder="Email...">
              </div>
              <div class="form-group">
                <input type="text" name="address" class="form-control" id="address" placeholder="Địa chỉ...">
              </div>
              <div class="form-group">
                <input type="text" name="phone" class="form-control" id="phone" placeholder="Số điện thoại...">
              </div>
              <button type="submit" name="signup" class="btn btn-primary btn-block btn-round">Đăng ký</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">

        <h1 class="my-4 text-primary">Danh mục sản phẩm</h1>
        <div class="list-group">
          <?php include_once("Category.php");?>
        </div>

      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
        <div class="row py-4">
        <?php include_once("SearchResult.php");?>
        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <div id="footer"></div>
  <footer class="bg-primary text-white">
    <div class="container py-2">
      <div class="row py-4">
        <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 text-center">
          <img src="images/logo4.png" alt="Website's Logo" width="50%"><p>
          <p class="font-italic ">hoangduy791999@gmail.com</p>
          <p class="font-italic ">+84 70 380 2199</p>
        </div>
        <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
          <h6 class="text-uppercase font-weight-bold mb-4">Sản phẩm</h6>
          <ul class="list-unstyled mb-0">
            <li class="mb-2"><a href="index.php?maloai=1" class="text-white">Bàn phím</a></li>
            <li class="mb-2"><a href="index.php?maloai=2" class="text-white">Chuột</a></li>
            <li class="mb-2"><a href="index.php?maloai=3" class="text-white">Tai nghe</a></li>
            <li class="mb-2"><a href="index.php?maloai=4" class="text-white">Ghế gaming</a></li>
          </ul>
        </div>
        <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
          <h6 class="text-uppercase font-weight-bold mb-4">Tham gia</h6>
          <ul class="list-unstyled mb-0">
            <li class="mb-2"><a class="text-white" data-toggle="modal" data-target="#loginModal">Đăng nhập</a></li>
            <li class="mb-2"><a class="text-white" data-toggle="modal" data-target="#signupModal">Đăng ký</a></li>
            <li class="mb-2"><a class="text-white" href="Cart.php">Giỏ hàng</a></li>
            <li class="mb-2"><a class="text-white" href="index.php">Trang chủ</a></li>
          </ul>
        </div>
        <div class="col-lg-4 col-md-6 mb-lg-0">
          <h6 class="text-uppercase font-weight-bold mb-4">Gửi thư cho chúng tôi</h6>
          <p class="text-white mb-4">Chúng tôi rất vui lòng được nhận ý kiến đóng góp của các bạn.</p>
          <div class="p-1 rounded">
            <form action="Mail.php" method="post" enctype="multipart/form-data" name="form3">
              <div class="form-group">
                <input type="email" id="sender" placeholder="Enter your email address" aria-describedby="button-addon1" class="form-control border-0 shadow-0">
              </div>
              <div class="form-group">
                <textarea class="form-control" id="message" placeholder="Message"></textarea>
              </div>
              <div class="text-center">
              <button type="submit" name="send" class="btn btn-primary btn-round btn-block"><i class="far fa-paper-plane"></i></button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Copyrights -->
    <div class="bg-primary py-4">
      <div class="container text-center">
        <p class="text-white mb-0 py-2">© 2020 NHD All rights reserved.</p>
      </div>
    </div>
  </footer>

  

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
