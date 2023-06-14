<?php
require_once '../template/header.php';
?>


<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="content-page">
    <!-- Start content -->
    <div class="content">
        <div class="container">

            <!-- Page-Title -->
            <div class="row">
                <div class="col-sm-12">
                    <h4 class="page-title">Dashboard</h4>
                    <p class="text-muted page-title-alt">Selamat datang di admin Ishaq !</p>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="widget-panel widget-style-2 bg-white">
                        <i class="md md-border-color text-primary"></i>
                        <?php
                        $petani = mysqli_query($conn, "SELECT * FROM tb_petani");
                        $row_petani = mysqli_num_rows($petani);
                        $row_petani_final = $row_petani;
                        ?>
                        <h2 class="m-0 text-dark counter font-600"><?= $row_petani_final ?></h2>
                        <div class="text-muted m-t-5">Petani</div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="widget-panel widget-style-2 bg-white">
                        <i class="md md-group text-warning"></i>
                        <?php
                        $karyawan = mysqli_query($conn, "SELECT * FROM tb_karyawan");
                        $row_karyawan = mysqli_num_rows($karyawan);
                        $row_karyawan_final = $row_karyawan;
                        ?>
                        <h2 class="m-0 text-dark counter font-600"><?= $row_karyawan_final ?></h2>
                        <div class="text-muted m-t-5">Karyawan</div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="widget-panel widget-style-2 bg-white">
                        <i class="md md-verified-user text-info"></i>
                        <?php
                        $inspeksi_top = mysqli_query($conn, "SELECT * FROM tb_inspeksi");
                        $row_inspeksi_top = mysqli_num_rows($inspeksi_top);
                        $row_inspeksi_top_final = $row_inspeksi_top;
                        ?>
                        <h2 class="m-0 text-dark counter font-600"><?= $row_inspeksi_top_final ?></h2>
                        <div class="text-muted m-t-5">Data Inspeksi</div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="widget-panel widget-style-2 bg-white">
                        <i class="md  md-info-outline text-danger"></i>
                        <?php
                        $petani_suspend = mysqli_query($conn, "SELECT * FROM tb_petani WHERE status = 'Suspended'");
                        $row_petani_suspend = mysqli_num_rows($petani_suspend);
                        $row_petani_suspend_final = $row_petani_suspend;
                        ?>
                        <h2 class="m-0 text-dark counter font-600"><?= $row_petani_suspend_final ?></h2>
                        <div class="text-muted m-t-5">Petani Rek. Keluar</div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card-box">

                        <h4 class="text-dark header-title m-t-0">Aktifitas Petugas Lapangan</h4>
                        <div class="nicescroll p-20" style="height: 295px; weight: 500px;">

                            <table class="table m-0">
                                <thead>
                                    <tr>
                                        <th>Foto</th>
                                        <th> Nama </th>
                                        <th> Aktivitas </th>
                                        <th> Petani </th>
                                        <th> Tanggal </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $inspeksi = mysqli_query($conn, "SELECT * FROM tb_inspeksi ORDER BY updated_at DESC LIMIT 15");
                                    foreach ($inspeksi as $dta_inspeksi) {
                                    ?>
                                        <tr>
                                            <td>
                                                <a href="../assets/images/photo/<?= $dta_inspeksi['foto'] ?>" target="_blank">
                                                    <img src="../assets/images/photo/<?= $dta_inspeksi['foto'] ?>" class="thumb-sm" alt="">
                                                </a>
                                            </td>
                                            <?php
                                            $result_petugas = mysqli_query($conn, "SELECT * FROM tb_karyawan WHERE id = '$dta_inspeksi[petugas_id]'");
                                            $dta_petugas = mysqli_fetch_assoc($result_petugas);
                                            ?>

                                            <td> <a href="karyawan-detail.php?id=<?= $dta_petugas['id'] ?>"> <?= $dta_petugas['nama'] ?> </a> </td>
                                            <td>Inspeksi</td>
                                            <?php
                                            $result_petani = mysqli_query($conn, "SELECT * FROM tb_petani WHERE id = '$dta_inspeksi[petani_id]'");
                                            $dta_petani = mysqli_fetch_assoc($result_petani);
                                            ?>
                                            <td> <a href="petani-detail.php?id=<?= $dta_petani['id'] ?>"> <?= $dta_petani['nama'] ?> </a> </td>
                                            <td><?= $dta_inspeksi['tanggal'] ?></td>
                                        </tr>
                                    <?php
                                    }
                                    ?>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>


            </div>

            <div class="col-lg-4">
                <div class="portlet">
                    <div class="portlet-heading portlet-default">
                        <h3 class="portlet-title text-dark">
                            Koordinator
                        </h3>
                        <div class="portlet-widgets">
                            <a href="javascript:;" data-toggle="reload"><i class="ion-refresh"></i></a>
                            <span class="divider"></span>
                            <a data-toggle="collapse" data-parent="#accordion1" href="#bg-loker"><i class="ion-minus-round"></i></a>
                            <span class="divider"></span>
                            <a href="#" data-toggle="remove"><i class="ion-close-round"></i></a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div id="bg-loker" class="panel-collapse collapse in">
                        <div class="portlet-body ">
                            <?php
                            $koordinator = mysqli_query($conn, "SELECT * FROM tb_karyawan WHERE posisi = 'Koordinator' ORDER BY id DESC");
                            foreach ($koordinator as $dta_koordinator) {
                            ?>
                                <div class="card-box">
                                    <div class="contact-card">
                                        <a class="pull-left" target="_blank" href="../assets/images/photo/<?= $dta_inspeksi['foto'] ?>">
                                            <img class="img-responsive img-circle thumb-md" src="../assets/images/photo/<?= $dta_inspeksi['foto'] ?>" alt="Ishaq">
                                        </a>

                                        <div class="member-info">
                                            <h4 class="m-t-0 m-b-5 header-title"> <a href="karyawan-detail.php?id=<?= $dta_koordinator['id'] ?> ?>"><b><?= $dta_koordinator['nama'] ?></b></a> </h4>
                                            <p class="text-muted"><?= $dta_koordinator['alamat'] ?></p>
                                            <!-- <p class="text-dark"><i class="md md-business m-r-10"></i><small>fsdfds</small></p> -->
                                            <!-- <div class="m-t-20"> -->
                                            <!-- <a href="#" class="btn btn-success waves-effect waves-light btn-sm m-l-5">Edit</a>
                                                    <a href="#" class="btn btn-pink waves-effect waves-light btn-sm m-l-5">Call</a> -->
                                            <!-- </div> -->
                                        </div>
                                    </div>
                                </div>
                            <?php
                            } ?>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-8" style="overflow-y: scroll; height:300px;">
                <div class="row">
                    
                        <div class="portlet">
                            <div class="portlet-heading bg-pink">
                                <h3 class="portlet-title">
                                    Petani Rekomendasi Keluar
                                </h3>
                                <div class="portlet-widgets">
                                    <a href="javascript:;" data-toggle="reload"><i class="ion-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion1" href="#bg-danger"><i class="ion-minus-round"></i></a>
                                    <span class="divider"></span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="bg-danger" class="panel-collapse collapse in">
                                <div class="portlet-body">

                                    <div class="p-20">
                                        <table class="table table-actions-bar m-0">
                                            <thead>
                                                <tr>
                                                    <th>Foto</th>
                                                    <th> Nama </th>
                                                    <th> Nilai </th>
                                                    <th> </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php

                                                $petani_rekomendasi_delete = mysqli_query($conn, "SELECT * FROM tb_petani WHERE status = 'Suspended' ORDER BY id ASC");
                                                foreach ($petani_rekomendasi_delete as $dta_petani_rekomendasi_delete) {
                                                ?>
                                                    <tr>
                                                        <td>
                                                            <a href="../assets/images/photo/<?= $dta_petani_rekomendasi_delete['foto'] ?>" target="_blank">
                                                                <img src="../assets/images/photo/<?= $dta_petani_rekomendasi_delete['foto'] ?>" class="thumb-sm" alt="">
                                                            </a>
                                                        </td>
                                                        <td> <a href="petani-detail.php?id=<?= $dta_petani_rekomendasi_delete['id'] ?>"> <?= $dta_petani_rekomendasi_delete['nama'] ?> </a> </td>
                                                        <?php
                                                        $inspeksi = mysqli_query($conn, "SELECT * FROM tb_inspeksi WHERE petani_id = '$dta_petani_rekomendasi_delete[id]' ORDER BY id DESC LIMIT 1");
                                                        $data_inspeksi = mysqli_fetch_assoc($inspeksi);
                                                        $a1 = perhitunganSelisiGAP($data_inspeksi['a1'] - 2);
                                                        $a2 = perhitunganSelisiGAP($data_inspeksi['a2'] - 3);
                                                        $a3 = perhitunganSelisiGAP($data_inspeksi['a3'] - 4);
                                                        $a4 = perhitunganSelisiGAP($data_inspeksi['a4'] - 4);
                                                        $a5 = perhitunganSelisiGAP($data_inspeksi['a5'] - 3);
                                                        $a6 = perhitunganSelisiGAP($data_inspeksi['a6'] - 3);
                                                        $a7 = perhitunganSelisiGAP($data_inspeksi['a7'] - 3);
                                                        $a8 = perhitunganSelisiGAP($data_inspeksi['a8'] - 4);
                                                        $a9 = perhitunganSelisiGAP($data_inspeksi['a9'] - 2);
                                                        // TD factor Core
                                                        $jumlah_core = $a3 + $a4 + $a6 + $a7 + $a8;
                                                        $hasil_core = $jumlah_core / 5;
                                                        // TD factor Secondary
                                                        $jumlah_secondary = $a1 + $a2 + $a5 + $a9;
                                                        $hasil_secondary = $jumlah_secondary / 4;
                                                        // TD Total
                                                        $total = (0.6 * $hasil_core) + (0.4 * $hasil_secondary);
                                                        if ($total < 2.5) {
                                                            echo "<td><span class='label label-danger'> $total </span></td>";
                                                        } else {
                                                            echo "<td><span class='label label-primary'> $total </span></td>";
                                                        }
                                                        ?>
                                                        <td>
                                                            <a href="#" data-toggle="modal" data-target="#hapus-<?= $dta_petani_rekomendasi_delete['id'] ?>" class="table-action-btn"><i class="md md-delete"></i></a>
                                                        </td>
                                                    </tr>


                                                    <!-- MODAL HAPUS -->
                                                    <div class="modal fade" tabindex="-1" id="hapus-<?= $dta_petani_rekomendasi_delete['id'] ?>">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content bg-inverse">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" style="color: white;">Keluarkan Petani</h4>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <p style="color: white;">Yakin Ingin Mengeluarkan <?= $dta_petani_rekomendasi_delete['nama'] ?> ?</p>
                                                                </div>
                                                                <div class="modal-footer justify-content-between">
                                                                    <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Batal</button>
                                                                    <a href="controller/controller-petani.php?keluar_petani=true&id=<?= $dta_petani_rekomendasi_delete['id'] ?>" type="button" class="btn btn-outline-dark" style="background-color: white;">Keluarkan</a>
                                                                </div>
                                                            </div>
                                                            <!-- /.modal-content -->
                                                        </div>
                                                        <!-- /.modal-dialog -->
                                                    </div>
                                                    <!-- /.modal -->
                                                <?php
                                                }
                                                ?>
                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>
                                                
                </div>

            </div>


        </div>


        <!-- ============================================================== -->
        <!-- End Right content here -->
        <!-- ============================================================== -->
        <script>
            // membaca elemen scroll area
            var scrollArea = document.querySelector('.scroll-area');

            // atur scroll area agar otomatis scroll ke bawah ketika konten berubah
            scrollArea.addEventListener('DOMNodeInserted', function() {
                scrollArea.scrollTop = scrollArea.scrollHeight;
            });
        </script>
        <?php
        require_once '../template/footer.php';
        ?>