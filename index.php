<?php 
session_start();

require "koneksi.php";

$sql = "SELECT SUM(jumlah) AS total_jumlah FROM data WHERE status = '1'";
$ccc = mysqli_query($conn, $sql);

if ($ccc) {
    $total = mysqli_fetch_array($ccc);
    if ($total['total_jumlah'] !== null) {
        $muzaki = number_format($total['total_jumlah']);
    } else {
        echo "Data tidak tersedia";
    }
} else {
    echo "Query gagal dieksekusi: " . mysqli_error($conn);
}

$sql = "SELECT SUM(total) AS total_beras FROM data WHERE jenis = 'beras' AND status = '1' ";
$sss = mysqli_query($conn, $sql);
if ($sss) {
    $total = mysqli_fetch_array($sss);
    if ($total['total_beras'] !== null) {
        $beras = number_format($total['total_beras']);
    } else {
        echo "Data tidak tersedia";
    }
} else {
    echo "Query gagal dieksekusi: " . mysqli_error($conn);
}

$sql = "SELECT SUM(total) AS total_uang FROM data WHERE jenis = 'uang' AND status = '1' ";
$aaa = mysqli_query($conn, $sql);
if ($aaa) {
    $total = mysqli_fetch_array($aaa);
    if ($total['total_uang'] !== null) {
        $uang = number_format($total['total_uang']);
    } else {
        echo "Data tidak tersedia";
    }
} else {
    echo "Query gagal dieksekusi: " . mysqli_error($conn);
}


if (isset($_POST['takmir'])) {
    header('location: pass.php');

}

if (isset($_POST['user'])) {
    header('location: main.php');

}

$sql = "SELECT * FROM data WHERE warga = 'RT10' AND status = '1'";
$rt10_query = mysqli_query($conn, $sql);
$jumlah_rt10 = mysqli_num_rows($rt10_query);


$sql = "SELECT * FROM data WHERE warga = 'RT11' AND status = '1'";
$rt11_query = mysqli_query($conn, $sql);
$jumlah_rt11 = mysqli_num_rows($rt11_query);


$sql = "SELECT * FROM data WHERE warga = 'RT14' AND status = '1'";
$rt14_query = mysqli_query($conn, $sql);
$jumlah_rt14 = mysqli_num_rows($rt14_query);


$sql = "SELECT * FROM data WHERE warga = 'RT15' AND status = '1'";
$rt15_query = mysqli_query($conn, $sql);
$jumlah_rt15 = mysqli_num_rows($rt15_query);


$sql = "SELECT * FROM data WHERE warga = 'RT16' AND status = '1'";
$rt16_query = mysqli_query($conn, $sql);
$jumlah_rt16 = mysqli_num_rows($rt16_query);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

body {
    background-color: aliceblue;
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
}

.container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
    padding: 20px;
}

.total {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    width: 100%;
    margin-top: 20px;
}

.total {
    align-items: center; /* Menengahkan item di dalam total */
}

.m, .b, .u, .rt {
    width: 200px;
    border: 1px solid black;
    padding: 5px 6px;
    margin-bottom: 10px;
}

form {
    text-align: center;
    margin-top: 20px;
}

input[type="submit"] {
    padding: 10px 20px;
    background-color: rgb(0, 99, 212);
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin: 10px;
    font-family: 'Poppins', sans-serif;
}

table{
    border-collapse: collapse;
    }

    th, td{
        border: 1px solid black;
        padding: 5px;
        text-align: center;
    }

@media screen and (max-width: 600px) {
    .total {
        flex-direction: column;
        align-items: center;
    }

    .total {
        margin-bottom: 20px; 
    }

    .m, .b, .u, .rt {
        width: 80%;
    }

    .container {
        padding: 10px;
    }


}

    </style>
</head>
<body>

<div class="container">
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


    <table>
        <tr>
            <th>warga</th>
            <th>total muzakki</th>
        </tr>
        <tr>
            <td>rt10</td>
            <td><?php echo $jumlah_rt10 ?></td>
        </tr>
        <tr>
            <td>rt11</td>
            <td><?php echo $jumlah_rt11 ?></td>
        </tr>
        <tr>
            <td>rt14</td>
            <td><?php echo $jumlah_rt14 ?></td>
        </tr>
        <tr>
            <td>rt15</td>
            <td><?php echo $jumlah_rt15 ?></td>
        </tr>
        <tr>
            <td>rt16</td>
            <td><?php echo $jumlah_rt16 ?></td>
        </tr>
    </table>

    <form method="post">
        <input type="submit" value="takmir" name="takmir">
        <input type="submit" value="muzakki" name="user">
    </form>
</div>

</body>
</html>
