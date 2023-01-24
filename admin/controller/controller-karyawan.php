<?php

function plugins()
{ ?>
    <link rel="stylesheet" href="../../assets/plugins/bootstrap-more/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../assets/dist/css2/components.css">
    <script src="../../assets/dist/jquery.min.js"></script>
    <script src="../../assets/dist/sweetalert/sweetalert.min.js"></script>
    <?php }
require('../../koneksi.php');


// SUBMIT SUPER ADMIN
if (isset($_POST['submit_tambah_karyawan'])) {
    $nomor = $_POST['nomor'];
    $nama = $_POST['nama'];
    $koordinator = $_POST['koordinator'];
    $kontak = $_POST['kontak'];
    $alamat = $_POST['alamat'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $tempat_lahir = $_POST['tempat_lahir'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $username = $_POST['username'];
    // $default_password = "Adminuinamfind123";
    $password = password_hash($username, PASSWORD_DEFAULT);
    $posisi = "Petugas";
    $foto = "photo_default.png";

    // echo " aa";

    // TAMBAH DATA
    $query = "INSERT INTO tb_karyawan VALUES (NULL, '$nomor', '$posisi', '$nama', '$kontak', '$alamat', '$jenis_kelamin',
                        '$tempat_lahir', '$tanggal_lahir', '$username', '$password', '$foto', '$koordinator',  NULL,  NULL);";
    // mysqli_query($conn, $query);
    // echo " bb";
    if (mysqli_query($conn, $query)) {
        // echo " CC";
        plugins(); ?>
        <script>
            $(document).ready(function() {
                swal({
                    title: 'Berhasil',
                    text: 'Data Karyawan Berhasil ditambah!',
                    icon: 'success'
                }).then((data) => {
                    location.href = '../karyawan.php';
                });
            });
        </script>
    <?php } else {
        echo "Error : " . mysqli_error($conn);
    }
}


// SUBMIT SUPER ADMIN
if (isset($_POST['submit_tambah_koordinator'])) {
    $nomor = $_POST['nomor'];
    $nama = $_POST['nama'];
    $kontak = $_POST['kontak'];
    $alamat = $_POST['alamat'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $tempat_lahir = $_POST['tempat_lahir'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $username = $_POST['username'];
    // $default_password = "Adminuinamfind123";
    $password = password_hash($username, PASSWORD_DEFAULT);
    $posisi = "Koodrinator";
    $foto = "photo_default.png";

    // echo " aa";

    // TAMBAH DATA
    $query = "INSERT INTO tb_karyawan (`id`, `no_kepegawaian`, `posisi`, `nama`, `kontak`, `alamat`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `username`, `password`, `foto`, `created_at`, `updated_at`)
                        VALUES (NULL, '$nomor', '$posisi', '$nama', '$kontak', '$alamat', '$jenis_kelamin',
                        '$tempat_lahir', '$tanggal_lahir', '$username', '$password', '$foto',  NULL,  NULL);";
    // mysqli_query($conn, $query);
    // echo " bb";
    if (mysqli_query($conn, $query)) {
        // echo " CC";
        plugins(); ?>
        <script>
            $(document).ready(function() {
                swal({
                    title: 'Berhasil',
                    text: 'Data Koordinator Berhasil ditambah!',
                    icon: 'success'
                }).then((data) => {
                    location.href = '../karyawan.php';
                });
            });
        </script>
    <?php } else {
        echo "Error : " . mysqli_error($conn);
    }
}

// UPDATE ADMIN
if (isset($_POST['edit_karyawan'])) {

    $id = $_POST['id'];
    $nomor = $_POST['nomor'];
    $nama = $_POST['nama'];
    $kontak = $_POST['kontak'];
    $alamat = $_POST['alamat'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $tempat_lahir = $_POST['tempat_lahir'];
    $tanggal_lahir = $_POST['tanggal_lahir'];

    $query = "UPDATE tb_karyawan SET no_kepegawaian = '$nomor',
											nama = '$nama',
											kontak = '$kontak',
											alamat = '$alamat',
											jenis_kelamin = '$jenis_kelamin',
											tempat_lahir = '$tempat_lahir',
											tanggal_lahir = '$tanggal_lahir',
											updated_at = NULL WHERE id = '$id'";
    // mysqli_query($conn, $query);
    // EDIT PARTAI
    if (mysqli_query($conn, $query)) {
        plugins(); ?>
        <script>
            $(document).ready(function() {
                swal({
                    title: 'Berhasil',
                    text: 'Data Karyawan berhasil diubah',
                    icon: 'success'
                }).then((data) => {
                    location.href = '../karyawan.php';
                });
            });
        </script>
    <?php } else {
        echo "Error : " . mysqli_error($conn);
    }
}


// HAPUS ADMIN
if (isset($_GET['hapus_karyawan'])) {
    $id = $_GET['id'];

    $query = "DELETE FROM tb_karyawan WHERE id = '$id'";
    mysqli_query($conn, $query);
    if (mysqli_affected_rows($conn) > 0) {
        plugins(); ?>
        <script>
            $(document).ready(function() {
                swal({
                    title: 'Berhasil Dihapus',
                    text: 'Data Karyawan berhasil dihapus',
                    icon: 'success'
                }).then((data) => {
                    location.href = '../karyawan.php';
                });
            });
        </script>
<?php }
}

?>