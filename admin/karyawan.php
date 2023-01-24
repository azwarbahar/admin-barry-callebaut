<?php
require_once '../template/header.php';

$karyawan = mysqli_query($conn, "SELECT * FROM tb_karyawan ORDER BY id DESC");
$progres_petugas = mysqli_query($conn, "SELECT * FROM tb_karyawan WHERE posisi = 'Petugas' ORDER BY id DESC");

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

                    <h4 class="page-title">Karyawan</h4>
                    <ol class="breadcrumb">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li class="active">
                            Karyawan
                        </li>
                    </ol>
                </div>
            </div>


            <div class="row">
                <div class="col-sm-12">
                    <div class="card-box table-responsive">
                        <h4 class="m-t-0 header-title"><b>Data kordinator dan field facilitator</b></h4>

                        <!-- MODAL TABAH KARYAWAN -->
                        <div id="con-close-modal-karyawan" class="modal fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h4 class="modal-title">Tambah Petugas</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form method="POST" action="controller/controller-karyawan.php" enctype="multipart/form-data">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Nomor Kepegawaian</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Nomor" name="nomor" id="nomor">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Nama Lengkap</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Nama Lengkap" name="nama" id="nama">
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Koordinator</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control select2" name="koordinator" id="koordinator" required="">
                                                        <option value="">- Pilih -</option>
                                                        <?php
                                                        $koordinator = mysqli_query($conn, "SELECT * FROM tb_karyawan WHERE posisi = 'Koordinator'");
                                                        while ($row = mysqli_fetch_assoc($koordinator)) {
                                                            echo "<option value='$row[id]'>$row[nama]</option>";
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Kontak</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="nb-edt form-control" required="" autocomplete="off" placeholder="Kontak" name="kontak" id="kontak">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Alamat</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Alamat" name="alamat" id="alamat">
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Jenis Kelamin</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="jenis_kelamin" id="jenis_kelamin" required="">
                                                        <option value=""> - Pilih -</option>
                                                        <option value="Laki-laki">Laki-laki</option>
                                                        <option value="Perempuan">Perempuan</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Tempat Lahir</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Tempat Lahir" name="tempat_lahir" id="tempat_lahir">
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Tanggal Lahir</label>
                                                <div class="col-sm-9">
                                                    <div class="input-group">
                                                        <input type="date" class="nb-edt form-control" placeholder="mm/dd/yyyy" id="datepicker" name="tanggal_lahir">
                                                        <!-- <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span> -->
                                                    </div>
                                                    <!-- <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Tanggal Lahir" name="tanggal_lahir" id="tanggal_lahir"> -->
                                                </div>
                                            </div>

                                            <h4 style="color: aqua; margin-bottom: 10px;">Login Mobile</h4>

                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Username</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Username" name="username" id="username">
                                                    <p>Username akan menjadi Password default</p>
                                                </div>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Batal</button>
                                                <button type="submit" name="submit_tambah_karyawan" class="btn btn-default waves-effect">Simpan</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- AKHIR MODAL TABAH KARYAWAN -->

                        <!-- MODAL TABAH KOORDINATOR -->
                        <div id="con-close-modal-koordinator" class="modal fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h4 class="modal-title">Tambah Koordinator</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form method="POST" action="controller/controller-karyawan.php" enctype="multipart/form-data">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Nomor Kepegawaian</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Nomor" name="nomor" id="nomor">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Nama Lengkap</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Nama Lengkap" name="nama" id="nama">
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Kontak</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="nb-edt form-control" required="" autocomplete="off" placeholder="Kontak" name="kontak" id="kontak">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Alamat</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Alamat" name="alamat" id="alamat">
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Jenis Kelamin</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="jenis_kelamin" id="jenis_kelamin" required="">
                                                        <option value=""> - Pilih -</option>
                                                        <option value="Laki-laki">Laki-laki</option>
                                                        <option value="Perempuan">Perempuan</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Tempat Lahir</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Tempat Lahir" name="tempat_lahir" id="tempat_lahir">
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Tanggal Lahir</label>
                                                <div class="col-sm-9">
                                                    <div class="input-group">
                                                        <input type="date" class="nb-edt form-control" placeholder="mm/dd/yyyy" id="datepicker" name="tanggal_lahir">
                                                        <!-- <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span> -->
                                                    </div>
                                                    <!-- <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Tanggal Lahir" name="tanggal_lahir" id="tanggal_lahir"> -->
                                                </div>
                                            </div>

                                            <h4 style="color: aqua; margin-bottom: 10px;">Login Mobile</h4>

                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Username</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Username" name="username" id="username">
                                                    <p>Username akan menjadi Password default</p>
                                                </div>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Batal</button>
                                                <button type="submit" name="submit_tambah_koordinator" class="btn btn-default waves-effect">Simpan</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- AKHIR MODAL TABAH KOORDINATOR -->


                        <a href="#" style="margin-top: 10px;" class="btn btn-primary btn-rounded waves-effect waves-light m-b-30" data-toggle="modal" data-target="#con-close-modal-karyawan">Tambah Petugas</a>
                        <a href="#" style="margin-top: 10px;" class="btn btn-inverse btn-rounded waves-effect waves-light m-b-30" data-toggle="modal" data-target="#con-close-modal-koordinator">Tambah Koordinator</a>

                        <table id="datatable-buttons" class="table table-striped table-bordered table-actions-bar">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nama</th>
                                    <th>Posisi</th>
                                    <th>Kontak</th>
                                    <th>Tanggal Lahir</th>
                                    <th>Alamat</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $i = 1;
                                foreach ($karyawan as $dta) { ?>
                                    <tr>
                                        <td><?= $dta['no_kepegawaian'] ?></td>
                                        <td><?= $dta['nama'] ?></td>
                                        <td><?= $dta['posisi'] ?></td>
                                        <td><?= $dta['kontak'] ?></td>
                                        <td><?= $dta['tempat_lahir'] ?></td>
                                        <td><?= $dta['alamat'] ?></td>
                                        <td style="text-align: center;">
                                            <a href="karyawan-detail.php?id=<?= $dta['id'] ?>" class="table-action-btn"><i class="md md-visibility"></i></a>
                                            <a href="#" data-toggle="modal" data-target="#edit-<?= $dta['id'] ?>" class="table-action-btn"><i class="md md-edit"></i></a>
                                            <a href="#" data-toggle="modal" data-target="#hapus-<?= $dta['id'] ?>" class="table-action-btn"><i class="md md-delete"></i></a>
                                        </td>
                                    </tr>

                                    <!-- MODAL EDIT KARYAWAN -->
                                    <div id="edit-<?= $dta['id'] ?>" class="modal fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                                                    <h4 class="modal-title">Edit Karyawan</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form method="POST" action="controller/controller-karyawan.php" enctype="multipart/form-data">
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 col-form-label">Nomor Kepegawaian</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" value="<?= $dta['no_kepegawaian'] ?>" class="nb-edt form-control" required="" autocomplete="off" placeholder="Nomor" name="nomor" id="nomor">
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 col-form-label">Nama Lengkap</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" value="<?= $dta['nama'] ?>" class="nb-edt form-control" required="" autocomplete="off" placeholder="Nama Lengkap" name="nama" id="nama">
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 col-form-label">Kontak</label>
                                                            <div class="col-sm-9">
                                                                <input type="number" value="<?= $dta['kontak'] ?>" class="nb-edt form-control" required="" autocomplete="off" placeholder="Kontak" name="kontak" id="kontak">
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 col-form-label">Alamat</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" value="<?= $dta['alamat'] ?>" class="nb-edt form-control" required="" autocomplete="off" placeholder="Alamat" name="alamat" id="alamat">
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-sm-3 col-form-label">Jenis Kelamin</label>
                                                            <div class="col-sm-9">
                                                                <select class="form-control" name="jenis_kelamin" id="jenis_kelamin" required="">
                                                                    <?php
                                                                    if ($dta['jenis_kelamin'] == "Laki-laki") {
                                                                        echo "<option selected='selected' value='Laki-laki'>Laki-laki</option>
                                                                        <option value='Perempuan'>Perempuan</option>";
                                                                    } else {
                                                                        echo "<option value='Laki-laki'>Laki-laki</option>
                                                                        <option selected value='Perempuan'>Perempuan</option>";
                                                                    }
                                                                    ?>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-sm-3 col-form-label">Tempat Lahir</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" value="<?= $dta['tempat_lahir'] ?>" class="nb-edt form-control" required="" autocomplete="off" placeholder="Tempat Lahir" name="tempat_lahir" id="tempat_lahir">
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-sm-3 col-form-label">Tanggal Lahir</label>
                                                            <div class="col-sm-9">
                                                                <div class="input-group">
                                                                    <input type="date" value="<?= $dta['tanggal_lahir'] ?>" class="nb-edt form-control" placeholder="mm/dd/yyyy" id="datepicker" name="tanggal_lahir">
                                                                    <!-- <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span> -->
                                                                </div>
                                                                <!-- <input type="text" class="nb-edt form-control" required="" autocomplete="off" placeholder="Tanggal Lahir" name="tanggal_lahir" id="tanggal_lahir"> -->
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <input type="hidden" name="id" value="<?= $dta['id'] ?>">
                                                            <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Batal</button>
                                                            <button type="submit" name="edit_karyawan" class="btn btn-default waves-effect">Simpan</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- AKHIR MODAL EDIT KARYAWAN -->


                                    <!-- MODAL HAPUS -->
                                    <div class="modal fade" tabindex="-1" id="hapus-<?= $dta['id'] ?>">
                                        <div class="modal-dialog">
                                            <div class="modal-content bg-inverse">
                                                <div class="modal-header">
                                                    <h4 class="modal-title" style="color: white;">Hapus Data Karyawan</h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p style="color: white;">Yakin Ingin Menghapus Data Karyawan ?</p>
                                                </div>
                                                <div class="modal-footer justify-content-between">
                                                    <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Batal</button>
                                                    <a href="controller/controller-karyawan.php?hapus_karyawan=true&id=<?= $dta['id'] ?>" type="button" class="btn btn-outline-dark" style="background-color: white;">Hapus</a>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->


                                <?php $i = $i + 1;
                                } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-sm-12">
                    <div class="card-box table-responsive">
                        <h4 class="m-t-0 header-title"><b>Progres Field facilitator</b></h4>
                        <table id="" class="table table table-hover m-0">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nama</th>
                                    <th>Koordinator</th>
                                    <th>Progres</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $i = 1;
                                foreach ($progres_petugas as $dta_petugas) { ?>
                                    <tr>
                                        <td><?= $dta_petugas['no_kepegawaian'] ?></td>
                                        <td><?= $dta_petugas['nama'] ?></td>
                                        <?php
                                        $result_koordinator = mysqli_query($conn, "SELECT * FROM tb_karyawan WHERE id = '$dta_petugas[koordinator]'");
                                        $dta_koordinator = mysqli_fetch_assoc($result_koordinator);
                                        ?>
                                        <td> <a href="karyawan-detail.php?id=<?= $dta_koordinator['id'] ?>"> <?= $dta_koordinator['nama'] ?> </a> </td>
                                        <td>
                                            <span class="label label-primary">Done</span>
                                        </td>
                                    </tr>
                                <?php $i = $i + 1;
                                } ?>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>



            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->

            <?php
            require_once '../template/footer.php';
            ?>