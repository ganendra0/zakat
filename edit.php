<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();

require 'koneksi.php';

// Ambil data yang akan diedit dari database
$id = $_GET['id']; // Dapatkan ID data yang akan diedit dari URL

$query = "SELECT * FROM data WHERE id = '$id'";
$result = mysqli_query($conn, $query);

if (mysqli_num_rows($result) == 1) {
    $row = mysqli_fetch_assoc($result);

    // Set nilai default untuk form
    $warga = $row['warga'];
    $jumlah = $row['jumlah'];
    $alamat = $row['alamat'];
    $nomer = $row['nomer'];
    $nama = $row['nama'];
    $kategori = $row['kategori'];
    $jenis = $row['jenis'];
    $total = $row['total']/$jumlah;

    // Jumlah orang yang telah dipilih sebelumnya

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Simpan data dari form ke dalam variabel
        $warga = $_POST['warga'];
        $alamat = $_POST['alamat'];
        $nomer = $_POST['nomer'];
        $nama = $_POST['nama'];
        $kategori = $_POST['kategori'];
        $jenis = $_POST['jenis'];
        $total = $_POST['total'];

        // Perbarui data di database
        $query = "UPDATE data SET warga = '$warga', jumlah = '$jumlah', alamat = '$alamat', nomer = '$nomer', nama = '$nama', kategori = '$kategori', jenis = '$jenis', total = '$total' WHERE id = '$id'";

        if (mysqli_query($conn, $query)) {
            echo "<script>
                    alert('Data berhasil diperbarui.');
                    window.location.href = 'main.php';
                  </script>";
            exit;
        } else {
            echo "<script>
                    alert('Terjadi kesalahan. Data gagal diperbarui.');
                    window.location.href = 'main.php';
                  </script>";
            exit;
        }
    }
} else {
    echo "<script>
            alert('Data tidak ditemukan.');
            window.location.href = 'main.php';
          </script>";
    exit;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Data Zakat</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Red+Rose:wght@300&display=swap');

    h2{
        display: flex;
        justify-content: center;
        color: black;
        width: 100%;
    }

    h3{
        display: flex;
        margin-left: 15%;
        color: black;
    }

    body {    
        background-color: aliceblue;
        font-family: 'Poppins', sans-serif;
        padding-top: 100px;
      }

      form {
        margin-left: 15%;
        width: 70%;
        color: black;
        padding-bottom: 60px;
      }

      label {
        margin-top: 20px;
      }
    
      
      input[type="text"]
       {
        width: 70%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-sizing: border-box;
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
          }

      input[type="submit"]:hover {
        opacity: 50%;
      }


    </style>
</head>
<body>

    <h2>Edit Data Zakat</h2>

    <form method="post" action="" enctype="multipart/form-data">

        <label for="warga">Warga :</label>
        <select name='warga'>
            <option value='RT10' <?php if ($warga == 'RT10') echo 'selected'; ?>>RT 10</option>
            <option value='RT11' <?php if ($warga == 'RT11') echo 'selected'; ?>>RT 11</option>
            <option value='RT14' <?php if ($warga == 'RT14') echo 'selected'; ?>>RT 14</option>
            <option value='RT15' <?php if ($warga == 'RT15') echo 'selected'; ?>>RT 15</option>
            <option value='RT16' <?php if ($warga == 'RT16') echo 'selected'; ?>>RT 16</option>
        </select><br><br>


        Alamat: <input type="text" name="alamat" value="<?php echo $alamat; ?>"><br><br>

        No. Wa: <input type="text" name="nomer" value="<?php echo $nomer; ?>"><br><br>

            Nama : <input type="text" name="nama" value="<?php echo $nama; ?>"><br><br>

        <label for="kategori">Kategori :</label>
        <select name='kategori'>
            <option value='fitrah' <?php if ($kategori == 'fitrah') echo 'selected'; ?>>Zakat Fitrah</option>
            <option value='mal' <?php if ($kategori == 'mal') echo 'selected'; ?>>Zakat Mal</option>
            <option value='fidyah' <?php if ($kategori == 'fidyah') echo 'selected'; ?>>Fidyah</option>
        </select><br><br>

        <label>Jenis :</label>
        <input type="radio" value="beras" name="jenis" <?php if ($jenis == 'beras') echo 'checked'; ?> required>
        <label for="beras">Beras</label>
        <input type="radio" value="uang" name="jenis" <?php if ($jenis == 'uang') echo 'checked'; ?> required>
        <label for="uang">Uang</label> <br><br>

        Total (masukkan angka saja) : <input type="text" name="total" value="<?php echo $total; ?>">
        <br><br>

        <input type="submit" value="perbarui data">  
    </form>

</body>
</html>
