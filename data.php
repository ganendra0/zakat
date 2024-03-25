<?php

require 'koneksi.php';

$sql = "SELECT SUM(jumlah) AS total_jumlah FROM data";
$ccc = mysqli_query($conn, $sql);




if ($ccc) {
    $total = mysqli_fetch_array($ccc);
    if ($total['total_jumlah'] !== null) {
        $muzaki= number_format($total['total_jumlah']);
    } else {
        echo "Data tidak tersedia";
    }
} else {
    echo "Query gagal dieksekusi: " . mysqli_error($conn);
}

$sql = "SELECT SUM(total) AS total_beras FROM data WHERE jenis = 'beras' ";
$sss= mysqli_query($conn, $sql);
if ($sss) {
    $total = mysqli_fetch_array($sss);
    if ($total['total_beras'] !== null) {
        $beras= number_format($total['total_beras']);
    } else {
        echo "Data tidak tersedia";
    }
} else {
    echo "Query gagal dieksekusi: " . mysqli_error($conn);
}

$sql = "SELECT SUM(total) AS total_uang FROM data WHERE jenis = 'uang' ";
$aaa= mysqli_query($conn, $sql);
if ($aaa) {
    $total = mysqli_fetch_array($aaa);
    if ($total['total_uang'] !== null) {
        $uang= number_format($total['total_uang']);
    } else {
        echo "Data tidak tersedia";
    }
} else {
    echo "Query gagal dieksekusi: " . mysqli_error($conn);
}



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

        a{
        width: 80px;
        padding: 10px;
        margin-top: 20px;
        background-color: rgb(0, 99, 212); 
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 30px;
        float: right;
        text-decoration: none;
        font-size: 15px;
        margin-right: 0px;
      }

      a:hover{
        opacity: 50%;
      }

        
    </style>
</head>
<body>
<div class="total">
    <div class="muzakki">
    <h2>total muzakki</h2>
    <div class="m">
        <?php echo $muzaki ?>
    </div>
</div>

<div class="beras">
    <h2>total beras</h2>
    <div class="b">
        <?php echo $beras ?>
    </div>
</div>

<div class="uang">
    <h2>total uang</h2>
    <div class="u">
        <?php echo $uang ?>
    </div>
</div>
</div>



<a href="input.php">isi data</a>

<h1>Tabel data</h1>

<table>
    <tr>
        <th>ID</th>
        <th>Nama</th>
        <th>Warga</th>
        <th>Alamat</th>
        <th>No. Wa</th>
        <th>Kategori</th>
        <th>Jenis</th>
        <th>Jumlah Orang</th>
        <th>Total</th>
        <th>Gambar</th>
    </tr>
    <?php


$query = "SELECT * FROM data";
$result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>" . $row["id"] . "</td>";
            echo "<td>" . $row["nama"] . "</td>";
            echo "<td>" . $row["warga"] . "</td>";
            echo "<td>" . $row["alamat"] . "</td>";
            echo "<td>" . $row["nomer"] . "</td>";
            echo "<td>" . $row["kategori"] . "</td>";
            echo "<td>" . $row["jenis"] . "</td>";
            echo "<td>" . $row["jumlah"] . "</td>";
            echo "<td>" . $row["total"] . "</td>";
            echo "<td>" . '<img width="70px" src="gambar/' . $row['gambar']. '">' . "</td>";


            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='3'>Tidak ada data yang ditemukan</td></tr>";
    }

  
    ?>
</table>


<?php
mysqli_close($conn);
?>
