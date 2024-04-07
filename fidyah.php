<?php

session_start();

if (!isset($_SESSION['takmir'])) {
    header("location: index.php");
    exit;
}

require 'koneksi.php';

$sql = "SELECT SUM(jumlah) AS total_jumlah FROM data WHERE status = '1' AND kategori = 'fidyah'";
$ccc = mysqli_query($conn, $sql);

if ($ccc) {
    $total = mysqli_fetch_array($ccc);
    if ($total['total_jumlah'] !== null) {
        $muzaki = number_format($total['total_jumlah']);
    } else {
        $muzaki= "data tidak tersedia";
    }
} else {
    echo "Query gagal dieksekusi: " . mysqli_error($conn);
}

$sql = "SELECT SUM(total) AS total_beras FROM data WHERE jenis = 'beras' AND status = '1' AND kategori = 'fidyah' ";
$sss = mysqli_query($conn, $sql);
if ($sss) {
    $total = mysqli_fetch_array($sss);
    if ($total['total_beras'] !== null) {
        $beras = number_format($total['total_beras']);
    } else {
        $beras= "data tidak tersedia";
    }
} else {
    echo "Query gagal dieksekusi: " . mysqli_error($conn);
}

$sql = "SELECT SUM(total) AS total_uang FROM data WHERE jenis = 'uang' AND status = '1' AND kategori = 'fidyah' ";
$aaa = mysqli_query($conn, $sql);
if ($aaa) {
    $total = mysqli_fetch_array($aaa);
    if ($total['total_uang'] !== null) {
        $uang = number_format($total['total_uang']);
    } else {
        $uang= "data tidak tersedia";
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

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            width: 170%;
        }

        .navbar {
            background-color: rgb(0, 99, 212); 
            overflow: hidden;
            font-family: 'Poppins', sans-serif;
            width: 100%;
            box-sizing: border-box;
        }

        .navbar ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            justify-content: space-between;
        }

        .navbar li {
            float: left;
        }

        .navbar a {
            display: block;
            color: aliceblue;
            text-align: center;
            padding: 20px 16px;
            text-decoration: none;
        }

        .navbar p {
            color: #ddd;
            float: right;
            margin-right: 50px;
            margin-top: 20px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        /* Gaya tambahan */
        h1 {
            margin-top: 20px;
            margin-left: 10px;
        }

        .tombol {
            display: flex;
            margin-bottom: 10px;
            margin-left: 10px;
            margin-right: 10px;
            float: right;

        }

        
        .isi a,
        .kembali a {
            width: 80px;
            padding: 10px;
            background-color: rgb(0, 99, 212); 
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 30px;
            float: right;
            text-decoration: none;
            font-size: 15px;
            margin-left: 10px; /* Jarak antar tombol */
        }

        
        .isi a:hover,
        .kembali a:hover {
            opacity: 50%;
        }

        .acc a {
            width: 50px;
            padding: 10px;
            background-color: rgb(0, 99, 60); 
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 15px;
            float: left;
        }

        .acc a:hover {
            opacity: 50%;
        }
        
        table {
            border-collapse: collapse;
            width: 100%; 
            margin-right: 30px;
            margin-top: 30px;
            margin-bottom: 30px;
            margin-left: auto;

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

        th {
            background-color: rgb(128, 127, 128);
        }

        body {
            background-color: aliceblue;
            color: black;
        }

        .total {
            display: inline;
            gap: 20px;
        }

        .muzakki, .uang, .beras {
            justify-content: center;
            margin-left: 10px;

        }

        .m, .b, .u {
            width: 200px ;
            border: solid black;
            padding: 5px 6px;
        }

        /* Media queries untuk desain responsif */
        @media only screen and (max-width: 768px) {
            .navbar {
                overflow: auto;
            }

            .navbar ul {
                justify-content: flex-start;
                overflow: auto;
            }

            .navbar li {
                float: none;
                display: inline-block;
            }

            .navbar a {
                padding: 15px 10px;
            }

            .navbar p {
                margin-top: 10px;
            }

            .fitrah a,
            .mal a,
            .fidyah a,
            .isi a,
            .kembali a {
                width: auto;
                padding: 10px;
                margin-top: 10px;
            }

            table {
                font-size: 12px;
            }
        }
    </style>
</head>
<body>

<nav class="navbar">
    <ul>
    <li><a href="request.php">request</a></li>
        <li><a href="fitrah.php">fitrah</a></li>
        <li><a href="mal.php">mal</a></li>
        <li><a href="fidyah.php">fidyah</a></li>
    </ul>
</nav>

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

<div class="tombol">

    <div class="isi">
        <a href="main.php">isi data</a>
    </div>

    <div class="kembali">
        <a href="destroy.php">kembali</a>
    </div> 
</div>

<!-- Table Data -->

<h1>Tabel data</h1>

<table>
    <tr>
        <th>No.</th>
        <th>Nama</th>
        <th>Warga</th>
        <th>Alamat</th>
        <th>No. Wa</th>
        <th>Kategori</th>
        <th>Jenis</th>
        <th>Jumlah Orang</th>
        <th>Total</th>
        <th>Foto</th>
        <th>Tanggal</th>

    </tr>
    <?php
    $query = "SELECT * FROM data WHERE status = '1' AND kategori = 'fidyah' ";
    $result = mysqli_query($conn, $query);
    if (mysqli_num_rows($result) > 0) {
        $no = 1;
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>" . $no++ . "</td>";
            echo "<td>" . $row["nama"] . "</td>";
            echo "<td>" . $row["warga"] . "</td>";
            echo "<td>" . $row["alamat"] . "</td>";
            echo "<td>" . $row["nomer"] . "</td>";
            echo "<td>" . $row["kategori"] . "</td>";
            echo "<td>" . $row["jenis"] . "</td>";
            echo "<td>" . $row["jumlah"] . "</td>";
            echo "<td>" . $row["total"] . "</td>";
            echo "<td>" . '<img width="70px" src="gambar/' . $row['gambar']. '">' . "</td>";
            echo "<td>" . $row["tanggal"] . "</td>";

            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='9'>Tidak ada data yang ditemukan</td></tr>";
    }
    ?>
</table>

</body>
</html>
