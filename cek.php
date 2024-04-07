<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();

require 'koneksi.php';

$jum = $_SESSION['jumlah'];


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Simpan data dari form ke dalam variabel
    $warga =  $_SESSION['warga'];
    $alamat = $_SESSION['alamat'];
    $nomer = $_SESSION['nomer'];
    $jum = $_SESSION['jumlah'];
    $jumlah = $_SESSION['jumlah']/$jum;
    $nama = $_SESSION['nama'];
    $kategori = $_SESSION['kategori'];
    $jenis = $_SESSION['jenis'];
    $total = $_SESSION['total']/$jum;
    $gambar = $_SESSION['gambar'];

    

        for ($i = 0; $i < count($nama); $i++) {
            $currentNama = $nama[$i];
            $query = "INSERT INTO data (nama, warga, alamat, nomer, kategori, jenis, jumlah, total, gambar) 
                        VALUES ('$currentNama', '$warga', '$alamat', '$nomer', '$kategori', '$jenis', '$jumlah', '$total', '$gambar')";
            
            if (mysqli_query($conn, $query)) {
                echo "<script>
                      alert('Data berhasil ditambahkan.');
                      window.location.href = 'index.php';
                      </script>";
            } else {
                echo "<script>
                      alert('Terjadi kesalahan. Data gagal ditambahkan.');
                      window.location.href = 'index.php';
                      </script>";
            }
        }
    } 
 


// Jumlah orang yang telah dipilih sebelumnya
$jml = $_SESSION['jumlah'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Tabel</title>
    <style>
                @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');


        body{
            font-family: 'Poppins', sans-serif;
        }

        h1{
            margin-top: 200px;
        }

        table {
            border-collapse: collapse;
            width: 100%; 
            margin-right: 30px;
            margin-top: 30px;
            margin-bottom: 30px;


        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
            border-color: #000;
            background-color: #fff;
            color: #000;
            max-width: 100px;

            

        }
        th{
            background-color: rgb(128, 127, 128);

        }

        body {
            background-color: aliceblue;
            color: black;

        }

        .muzakki,
        .uang,
        .beras{
            justify-content: center;
        }

        .m, .b, .u{
            width:200px ;
            border: solid black;
            padding: 5px 6px
        }

        
        .total{
            display: flex;
            gap: 20px;
        }

        input[type="submit"] {
        width: 30%;
        padding: 10px;
        margin-top: 20px;
        background-color: rgb(0, 99, 212); 
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        float: right;
          }

      input[type="submit"]:hover {
        opacity: 50%;
      }

        
    </style>
</head>
<body>



<h1>Konfirmasi data</h1>

<table>
    <tr>
        <th>Nama</th>
        <th>Warga</th>
        <th>Alamat</th>
        <th>No. Wa</th>
        <th>Kategori</th>
        <th>Jenis</th>
        <th>Total</th>
    </tr>

    <?php

    $nama = $_SESSION['nama'];
    
    for ($i = 0; $i < count($nama); $i++) {
        $currentNama = $nama[$i];
        
            echo "<tr>";
            echo "<td>" . $currentNama . "</td>";
            echo "<td>" . $_SESSION['warga'] . "</td>";
            echo "<td>" . $_SESSION['alamat'] . "</td>";
            echo "<td>" . $_SESSION['nomer'] . "</td>";
            echo "<td>" . $_SESSION['kategori'] . "</td>";
            echo "<td>" . $_SESSION['jenis'] . "</td>";
            echo "<td>" . $_SESSION['total']/$_SESSION['jumlah'] . "</td>";
            echo "</tr>";
        }

    ?>

    </table>

        <form method="post">
                <input type="submit" value="konfirmasi">
        </form>

        
    </body>

