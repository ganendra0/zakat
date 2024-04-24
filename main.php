
<?php

session_start();

require 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  
  $_SESSION['tanggal'] = $_POST['tanggal'];
  $_SESSION['warga'] = $_POST['warga'];
  $_SESSION['alamat'] = $_POST['alamat'];
  $_SESSION['nomer'] = $_POST['nomer'];
  $_SESSION['jumlah'] = $_POST['jumlah'];
  header("Location: input.php");
  exit;

    
} 

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

    <h2>Penerimaan Zakat<br>Masjid As-Salam</h2>

    <h3>Data muzakki :</h3>

    <form method="post" action="" enctype="multipart/form-data">

    Tanggal: <input type="date" name="tanggal"><br><br>

        <label for="warga">Warga :</label>
    <select name='warga'>
		<option value='RT10'>RT 10</option>
		<option value='RT11'>RT 11</option>
        <option value='RT14'>RT 14</option>
		<option value='RT15'>RT 15</option>
		<option value='RT16'>RT 16</option>
     </select><br><br>

        
        <label for="jumlah">Jumlah Orang :</label>
    <select name='jumlah'>
		<option value='1'>1</option>
		<option value='2'>2</option>
        <option value='3'>3</option>
		<option value='4'>4</option>
		<option value='5'>5</option>
        <option value='6'>6</option>
        <option value='7'>7</option>
        <option value='8'>8</option>
        <option value='9'>9</option>
        <option value='10'>10</option>
	  </select><br><br>

        Alamat: <input type="text" name="alamat" require><br><br>

        No. Wa: <input type="text" name="nomer"><br><br>

        <input type="submit" value="next">
    </form>
</body>
</html>
