

<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();

require 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $_SESSION['tanggal'];  
    $_SESSION['warga'];
    $_SESSION['alamat'];
    $_SESSION['nomer'];
    $_SESSION['jumlah'];
    $_SESSION['nama'] = $_POST['nama'];
    $_SESSION['kategori']= $_POST['kategori'];
    $_SESSION['jenis']= $_POST['jenis'];
    $_SESSION['total']= $_POST['total'];
    if (isset($_FILES['gambar']) && $_FILES['gambar']['error'] === UPLOAD_ERR_OK) {
      include 'compress.php';
      $namagambar = $_FILES['gambar']['name'];
      $gambar = uploadAndResize($namagambar, 'gambar','../zakat/gambar/' , 512);
      $_SESSION['gambar']= $gambar;
  }
    header("Location: cek.php");
    exit;
  
} 

$jml = $_SESSION['jumlah'];
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zakat Warga</title>
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
    
      
      input[type="text"],
      input[type="date"],
      textarea,
      input[type="file"]
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

      a{
        width: 80px;
        padding: 10px;
        margin-top: 20px;
        background-color: rgb(0, 99, 212); 
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 0px;
        margin-bottom: 30px;
        margin-right: 30px;
        float: right;
        text-decoration: none;
        display: flex;
        font-size: 15px;
      }

      a:hover{
        opacity: 50%;
      }

    </style>
</head>
<body>

    <h2>Penerimaan Zakat<br>Masjid As-Salam</h2>

    <h3>Data muzakki :</h3>

    <form method="post" action="" enctype="multipart/form-data">
        Nama <?php echo "(untuk $jml orang )";?> : <br>
        <?php for ($i = 1; $i <= $jml; $i++) : ?>
            Nama <?php echo $i; ?>: <input type="text" name="nama[]"><br>
        <?php endfor; ?><br><br>

        <label for="kategori">Kategori :</label>
        <select name='kategori'>
		<option value='fitrah'>Zakat Fitrah</option>
		<option value='mal'>Zakat Mal</option>
        <option value='fidyah'>Fidyah</option>
	  </select><br><br>

        <label>Jenis :</label>
        <input type="radio" value="beras" name="jenis" required>
        <label for="beras">Beras</label>
        <input type="radio" value="uang" name="jenis" required>
        <label for="uang">Uang</label> <br><br>


      Total (masukkan angka saja) : <input type="text" name="total">
      <br><br>

      <label for="gambar">Upload Gambar:</label>
    <input type="file" id="gambar" name="gambar" accept="image/*">

        <input type="submit" value="simpan">
    </form>
</body>
</html>
