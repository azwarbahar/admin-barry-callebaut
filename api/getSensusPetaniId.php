<?php
require_once '../koneksi.php';
header('Content-type: application/json');
error_reporting(E_ERROR | E_PARSE);

$petani_id = $_GET["petani_id"];
$query = "SELECT * FROM tb_sensus WHERE petani_id = '$petani_id'";

$result = mysqli_query($conn, $query);

//  $array = array();
while ($row = mysqli_fetch_assoc($result)) {
    $array = $row;
}
if ($result) {
    if ($array != null) {
        json_encode(array("kode" => "1", "result_sensus" => $array));
    } else {
        json_encode(array("kode" => "2", "pesan" => "Data tidak ditemukan"));
    }
} else {
    json_encode(array("kode" => "0", "pesan" => mysqli_error($conn)));
}
