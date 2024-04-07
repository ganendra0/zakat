<?php

require "koneksi.php";

if( isset($_GET['id']) ){

    // ambil id dari query string
    $id = $_GET['id'];

    // buat query hapus
    $sql = "UPDATE `data` SET `status` = '1' WHERE `data`.`id` = $id;
    "; 
    $query = mysqli_query($conn, $sql);

    // apakah query hapus berhasil?
    if( $query ){
        echo "<script>
    alert('user berhasil di konfirmasi');
    window.location.href = 'request.php';
     </script>";
    } else {
        echo "<script>
    alert('user gagal di hapus');
     </script>";
    }

} else {
    die("akses dilarang...");
}

?>