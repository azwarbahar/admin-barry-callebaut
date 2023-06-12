<?php
date_default_timezone_set("Asia/Makassar");
session_start();
$conn = mysqli_connect("localhost", "u319221554_ishaqweb", "Uinam_2016", "u319221554_ishaqweb");

function perhitunganSelisiGAP($nilai)
{
    if ($nilai == "0") {
        $nilai_kembali = "5";
    } elseif ($nilai == "1") {
        $nilai_kembali = "4.5";
    } elseif ($nilai == "-1") {
        $nilai_kembali = "4";
    } elseif ($nilai == "2") {
        $nilai_kembali = "3.5";
    } elseif ($nilai == "-2") {
        $nilai_kembali = "3";
    } elseif ($nilai == "3") {
        $nilai_kembali = "2.5";
    } elseif ($nilai == "-3") {
        $nilai_kembali = "2";
    } elseif ($nilai == "4") {
        $nilai_kembali = "1.5";
    } else {
        $nilai_kembali = "1";
    }

    return $nilai_kembali;
}

function slugify($text, string $divider = '-')
{
    // replace non letter or digits by divider
    $text = preg_replace('~[^\pL\d]+~u', $divider, $text);

    // transliterate
    $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);

    // remove unwanted characters
    $text = preg_replace('~[^-\w]+~', '', $text);

    // trim
    $text = trim($text, $divider);

    // remove duplicate divider
    $text = preg_replace('~-+~', $divider, $text);

    // lowercase
    $text = strtolower($text);

    if (empty($text)) {
        return 'n-a';
    }

    return $text;
}
