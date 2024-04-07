<?php 
require "koneksi.php";

session_start();

$password = "assalam99";

if (isset($_POST['pw'])) {
    $input= $_POST['password'];
    if ($input == $password) {
        // Set session 'takmir'
        $_SESSION['takmir'] = true;
        // Redirect to data.php
        header('location: request.php');
        exit; // Pastikan untuk keluar dari skrip setelah pengalihan header
    } else {
        echo "<script>alert('Password salah');</script>";
    }
}

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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Mengatur tinggi body agar seluruh konten berada di tengah halaman */
            margin: 0; /* Menghapus margin bawaan browser */
            font-family: 'Poppins', sans-serif;
        }

        form {
            text-align: center; /* Mengatur posisi teks dalam form ke tengah */
        }

        /* Style untuk input teks */
        input[type="text"] {
            padding: 10px; /* Ukuran padding input teks */
            margin-bottom: 10px; /* Jarak antara input teks */
            border: 1px solid #ddd; /* Border input teks */
            border-radius: 5px; /* Membuat sudut border menjadi melengkung */
            box-sizing: border-box; /* Menyesuaikan ukuran input dengan padding dan border */
        }

        /* Style untuk tombol submit */
        input[type="submit"] {
            padding: 10px 20px; /* Ukuran padding tombol */
            background-color: rgb(0, 99, 212); /* Warna latar belakang tombol */
            color: white; /* Warna teks tombol */
            border: none; /* Menghapus border tombol */
            border-radius: 5px; /* Membuat sudut border menjadi melengkung */
            cursor: pointer; /* Mengubah kursor menjadi pointer saat diarahkan ke tombol */
            font-family: 'Poppins', sans-serif;

        }
    </style>
</head>
<body>
    
    <form method="post">
       password: <input type="text" name="password">
       <input type="submit" value="kirim" name="pw">
    </form>

</body>
</html>