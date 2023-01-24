<?php
require_once '../template/header.php';

$petani = mysqli_query($conn, "SELECT * FROM tb_petani WHERE status = 'Aktif' OR status = 'Suspended' ORDER BY id ASC");

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

                    <h4 class="page-title">Data Petani</h4>
                    <ol class="breadcrumb">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li class="active">
                            Data Petani
                        </li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="portlet">
                        <div class="portlet-heading bg-primary">
                            <h3 class="portlet-title">
                                Data Inspeksi Petani
                            </h3>
                            <div class="portlet-widgets">
                                <a href="javascript:;" data-toggle="reload"><i class="ion-refresh"></i></a>
                                <span class="divider"></span>
                                <a data-toggle="collapse" data-parent="#accordion1" href="#bg-primary"><i class="ion-minus-round"></i></a>
                                <span class="divider"></span>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div id="bg-primary" class="panel-collapse collapse in">
                            <div class="portlet-body">

                                <table id="datatable" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Nama</th>
                                            <th>A1</th>
                                            <th>A2</th>
                                            <th>A3</th>
                                            <th>A4</th>
                                            <th>A5</th>
                                            <th>A6</th>
                                            <th>A7</th>
                                            <th>A8</th>
                                            <th>A9</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1;

                                        foreach ($petani as $dta_petani) { ?>
                                            <tr>
                                                <td> <a href="petani-detail.php?id=<?= $dta_petani['id'] ?>"><?= $dta_petani['nama'] ?></a></td>
                                                <?php

                                                $inspeksi = mysqli_query($conn, "SELECT * FROM tb_inspeksi WHERE petani_id = '$dta_petani[id]' ORDER BY id DESC LIMIT 1");
                                                $data_inspeksi = mysqli_fetch_assoc($inspeksi);
                                                $jumlah_baris = mysqli_num_rows($inspeksi);
                                                if ($jumlah_baris > 0) {
                                                ?>
                                                    <td><?= $data_inspeksi['a1'] ?></td>
                                                    <td><?= $data_inspeksi['a2'] ?></td>
                                                    <td><?= $data_inspeksi['a3'] ?></td>
                                                    <td><?= $data_inspeksi['a4'] ?></td>
                                                    <td><?= $data_inspeksi['a5'] ?></td>
                                                    <td><?= $data_inspeksi['a6'] ?></td>
                                                    <td><?= $data_inspeksi['a7'] ?></td>
                                                    <td><?= $data_inspeksi['a8'] ?></td>
                                                    <td><?= $data_inspeksi['a9'] ?></td>
                                                <?php
                                                } else {
                                                ?>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                <?php
                                                }
                                                ?>
                                            </tr>
                                        <?php $i = $i + 1;
                                        } ?>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="portlet">
                        <div class="portlet-heading bg-custom">
                            <h3 class="portlet-title">
                                Selisi Nilai Target
                            </h3>
                            <div class="portlet-widgets">
                                <a href="javascript:;" data-toggle="reload"><i class="ion-refresh"></i></a>
                                <span class="divider"></span>
                                <a data-toggle="collapse" data-parent="#accordion1" href="#bg-custom"><i class="ion-minus-round"></i></a>
                                <span class="divider"></span>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div id="bg-custom" class="panel-collapse collapse in">
                            <div class="portlet-body">

                                <table id="datatable2" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Nama</th>
                                            <th>A1</th>
                                            <th>A2</th>
                                            <th>A3</th>
                                            <th>A4</th>
                                            <th>A5</th>
                                            <th>A6</th>
                                            <th>A7</th>
                                            <th>A8</th>
                                            <th>A9</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1;
                                        foreach ($petani as $dta_petani) { ?>
                                            <tr>
                                                <td> <a href="petani-detail.php?id=<?= $dta_petani['id'] ?>"><?= $dta_petani['nama'] ?></a></td>
                                                <?php

                                                $inspeksi = mysqli_query($conn, "SELECT * FROM tb_inspeksi WHERE petani_id = '$dta_petani[id]' ORDER BY id DESC LIMIT 1");
                                                $data_inspeksi = mysqli_fetch_assoc($inspeksi);
                                                $jumlah_baris = mysqli_num_rows($inspeksi);
                                                if ($jumlah_baris > 0) {
                                                ?>
                                                    <td><?= $data_inspeksi['a1'] - 2 ?></td>
                                                    <td><?= $data_inspeksi['a2'] - 3 ?></td>
                                                    <td><?= $data_inspeksi['a3'] - 4 ?></td>
                                                    <td><?= $data_inspeksi['a4'] - 4 ?></td>
                                                    <td><?= $data_inspeksi['a5'] - 3 ?></td>
                                                    <td><?= $data_inspeksi['a6'] - 3 ?></td>
                                                    <td><?= $data_inspeksi['a7'] - 3 ?></td>
                                                    <td><?= $data_inspeksi['a8'] - 4 ?></td>
                                                    <td><?= $data_inspeksi['a9'] - 2 ?></td>
                                                <?php
                                                } else {
                                                ?>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                <?php
                                                }
                                                ?>
                                            </tr>
                                        <?php $i = $i + 1;
                                        } ?>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="portlet">
                        <div class="portlet-heading bg-inverse">
                            <h3 class="portlet-title">
                                Pemetaan GAP
                            </h3>
                            <div class="portlet-widgets">
                                <a href="javascript:;" data-toggle="reload"><i class="ion-refresh"></i></a>
                                <span class="divider"></span>
                                <a data-toggle="collapse" data-parent="#accordion1" href="#bg-inverse"><i class="ion-minus-round"></i></a>
                                <span class="divider"></span>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div id="bg-inverse" class="panel-collapse collapse in">
                            <div class="portlet-body">

                                <table id="datatable3" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Nama</th>
                                            <th>A1</th>
                                            <th>A2</th>
                                            <th>A3</th>
                                            <th>A4</th>
                                            <th>A5</th>
                                            <th>A6</th>
                                            <th>A7</th>
                                            <th>A8</th>
                                            <th>A9</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1;
                                        foreach ($petani as $dta_petani) { ?>
                                            <tr>
                                                <td> <a href="petani-detail.php?id=<?= $dta_petani['id'] ?>"><?= $dta_petani['nama'] ?></a></td>
                                                <?php

                                                $inspeksi = mysqli_query($conn, "SELECT * FROM tb_inspeksi WHERE petani_id = '$dta_petani[id]' ORDER BY id DESC LIMIT 1");
                                                $data_inspeksi = mysqli_fetch_assoc($inspeksi);
                                                $jumlah_baris = mysqli_num_rows($inspeksi);
                                                if ($jumlah_baris > 0) {
                                                ?>
                                                    <td><?= perhitunganSelisiGAP($data_inspeksi['a1'] - 2) ?></td>
                                                    <td><?= perhitunganSelisiGAP($data_inspeksi['a2'] - 3) ?></td>
                                                    <td><?= perhitunganSelisiGAP($data_inspeksi['a3'] - 4) ?></td>
                                                    <td><?= perhitunganSelisiGAP($data_inspeksi['a4'] - 4) ?></td>
                                                    <td><?= perhitunganSelisiGAP($data_inspeksi['a5'] - 3) ?></td>
                                                    <td><?= perhitunganSelisiGAP($data_inspeksi['a6'] - 3) ?></td>
                                                    <td><?= perhitunganSelisiGAP($data_inspeksi['a7'] - 3) ?></td>
                                                    <td><?= perhitunganSelisiGAP($data_inspeksi['a8'] - 4) ?></td>
                                                    <td><?= perhitunganSelisiGAP($data_inspeksi['a9'] - 2) ?></td>
                                                <?php
                                                } else {
                                                ?>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                <?php
                                                }
                                                ?>
                                            </tr>
                                        <?php $i = $i + 1;
                                        } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="portlet">
                        <div class="portlet-heading bg-danger">
                            <h3 class="portlet-title">
                                Penjumlahan Factor
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
                                <table id="datatable4" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Nama</th>
                                            <th>Core Factor</th>
                                            <th>Secondary Factor</th>
                                            <th>TOTAL</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1;
                                        foreach ($petani as $dta_petani) { ?>
                                            <tr>
                                                <td> <a href="petani-detail.php?id=<?= $dta_petani['id'] ?>"><?= $dta_petani['nama'] ?></a></td>
                                                <?php
                                                $inspeksi = mysqli_query($conn, "SELECT * FROM tb_inspeksi WHERE petani_id = '$dta_petani[id]' ORDER BY id DESC LIMIT 1");
                                                $data_inspeksi = mysqli_fetch_assoc($inspeksi);
                                                $jumlah_baris = mysqli_num_rows($inspeksi);
                                                if ($jumlah_baris > 0) {
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
                                                    echo "<td>$hasil_core</td>";
                                                    // TD factor Secondary
                                                    $jumlah_secondary = $a1 + $a2 + $a5 + $a9;
                                                    $hasil_secondary = $jumlah_secondary / 4;
                                                    echo "<td>$hasil_secondary</td>";

                                                    // TD Total
                                                    $total = (0.6 * $hasil_core) + (0.4 * $hasil_secondary);
                                                    if ($total < 3) {
                                                        echo "<th style='color: red;' >$total</th>";

                                                        $query = "UPDATE tb_petani SET status = 'Suspended', updated_at = NULL WHERE id = '$dta_petani[id]'";
                                                        mysqli_query($conn, $query);
                                                    } else {
                                                        echo "<th>$total</th>";
                                                    }
                                                    // $tampung_total[$z] = $total;
                                                } else {
                                                ?>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <th style="color: red;">-</th>
                                                <?php
                                                }
                                                ?>
                                            </tr>
                                        <?php $i = $i + 1;
                                        } ?>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/detect.js"></script>
        <script src="../assets/js/fastclick.js"></script>
        <script src="../assets/js/jquery.slimscroll.js"></script>
        <script src="../assets/js/jquery.blockUI.js"></script>
        <script src="../assets/js/waves.js"></script>
        <script src="../assets/js/wow.min.js"></script>
        <script src="../assets/js/jquery.nicescroll.js"></script>
        <script src="../assets/js/jquery.scrollTo.min.js"></script>

        <script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="../assets/plugins/datatables/dataTables.bootstrap.js"></script>

        <script src="../assets/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="../assets/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="../assets/plugins/datatables/jszip.min.js"></script>
        <script src="../assets/plugins/datatables/pdfmake.min.js"></script>
        <script src="../assets/plugins/datatables/vfs_fonts.js"></script>
        <script src="../assets/plugins/datatables/buttons.html5.min.js"></script>
        <script src="../assets/plugins/datatables/buttons.print.min.js"></script>
        <script src="../assets/plugins/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="../assets/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="../assets/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="../assets/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="../assets/plugins/datatables/dataTables.scroller.min.js"></script>
        <script src="../assets/plugins/datatables/dataTables.colVis.js"></script>
        <script src="../assets/plugins/datatables/dataTables.fixedColumns.min.js"></script>

        <script src="../assets/pages/datatables.init.js"></script>


        <script src="../assets/js/jquery.core.js"></script>
        <script src="../assets/js/jquery.app.js"></script>


        <script type="text/javascript">
            $(document).ready(function() {
                $('#datatable').dataTable();
                $('#datatable2').dataTable();
                $('#datatable3').dataTable();
                $('#datatable4').dataTable();
                $('#datatable6').dataTable();
                $('#datatable7').dataTable();
                $('#datatable-keytable').DataTable({
                    keys: true
                });
                $('#datatable-responsive').DataTable();
                $('#datatable-colvid').DataTable({
                    "dom": 'C<"clear">lfrtip',
                    "colVis": {
                        "buttonText": "Change columns"
                    }
                });
                $('#datatable-scroller').DataTable({
                    ajax: "assets/plugins/datatables/json/scroller-demo.json",
                    deferRender: true,
                    scrollY: 380,
                    scrollCollapse: true,
                    scroller: true
                });
                var table = $('#datatable-fixed-header').DataTable({
                    fixedHeader: true
                });
                var table = $('#datatable-fixed-col').DataTable({
                    scrollY: "300px",
                    scrollX: true,
                    scrollCollapse: true,
                    paging: false,
                    fixedColumns: {
                        leftColumns: 1,
                        rightColumns: 1
                    }
                });
            });
            TableManageButtons.init();
        </script>

        </body>

        </html>