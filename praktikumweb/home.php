<?php
require ("koneksi.php");
//$email = $_GET['user_fullname'];

//inisialisasi session
session_start();
if(!isset($_SESSION['id']) ){
    $_SESSION['msg'] = 'anda harus login untuk mengakses halaman ini';
    header('Location: login.php');
}
$sesID = $_SESSION['id'];
$sesName = $_SESSION['name'];
$sesLvl = $_SESSION['level'];
?>
<html>
    <head>
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="tabel.css">
    </head>
    <body>
        <h1>Selamat Datang <?php echo $sesName;?></h1>
        <table border='1'>
            <tr>
                <td><b>No</b></td>
                <td><b>Email</b></td>
                <td><b>Nama</b></td>
                <td><b>Pilihan</b></td>
            </tr>
            <?php
                $query = "SELECT * FROM user_detail";
                $result = mysqli_query($koneksi, $query);
                $no = 1;

                if ($sesLvl == 1) {
                    $dis = "";
                }else{
                    $dis = "disabled";
                }

                while ($row = mysqli_fetch_array($result)){
                    $userMail = $row['user_email'];
                    $userName = $row['user_fullname'];

                ?>
            <tr>
               <td><?php echo $no; ?></td>
               <td><?php echo $userMail; ?></td>
               <td><?php echo $userName; ?></td>
               <td>
                   <a href="edit.php?id=<?php echo $row['id']; ?>">
                    <input type="button" value="Edit" <?php echo $dis; ?>></a>
                    &nbsp;&nbsp;
                   <a href="hapus.php?id=<?php echo $row['id']; ?>">
                   <input type="button" value="Hapus" <?php echo $dis; ?>></a>
            </td>
            </tr>
            <?php
            $no++;
            } ?>
        </table>
        <br></br>
        <a href="logout.php"><button>Logout</button>
    </body>
</html>