<?php
require ('koneksi.php');
if( isset($_POST['register']) ){
    $userMail = $_POST['txt_email'];
    $userPass = $_POST['txt_pass'];
    $userName = $_POST['txt_nama'];

    $query = "INSERT INTO user_detail VALUES ('','$userMail', '$userPass', '$userName',2)";
    $result = mysqli_query($koneksi, $query);
    header('Location: login.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 
<!-- costum css -->
<link rel="stylesheet" href="design.css">
</head>
  
<body>
    <section class="container-fluid">
        <!-- justify-content-center untuk mengatur posisi form agar berada di tengah-tengah -->
        <section class="row justify-content-center">
        <section class="col-12 col-sm-6 col-md-4">
            <form class="form-container" action="register.php" method="POST">
                <h4 class="text-center font-weight-bold"> Sign-Up </h4>
                <div class="form-group">
                    <label for="InputEmail">Email</label>
                    <input type="text" name="txt_email" required class="form-control" id="InputName" placeholder="Masukkan Email">
                </div>
                <div class="form-group">
                    <label for="InputPassword">Password</label>
                    <input type="text" name="txt_pass" required class="form-control" id="InputName" placeholder="Masukkan Password">
                </div>
                <div class="form-group">
                    <label for="InputName">Nama Lengkap</label>
                    <input type="text" name="txt_nama" required class="form-control" id="InputName" placeholder="Masukkan Nama Lengkap">
                </div>
                <button type="submit" class="btn btn-primary btn-block" name="register" a href="login.php">Daftar</button>
                <div class="form-footer mt-2">
                </div>
            </form>
        </section>
        </section>
    </section>
 
    <!-- Bootstrap requirement jQuery pada posisi pertama, kemudian Popper.js, danyang terakhit Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>