<?php
include ("../database/koneksi.php");
include ("header.php");

$cek = mysqli_num_rows(mysqli_query($conn,"select * from skripsi where nama='$user'"));
$sta = mysqli_query($conn,"select * from mahasiswa where nim='$nim'");
$d=mysqli_fetch_array($sta);

?>
<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="index-mahasiswa.php">Sistem Skripsi</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="index-mahasiswa.php">SS</a>
        </div>
        <ul class="sidebar-menu">
            <li class="active"><a class="nav-link" href="index-mahasiswa.php"><i class="fas fa-university"></i> <span>Pemberitahuan</span></a></li>
            <?php if ($d['status'] == "Mahasiswa") {
                echo '<li><a class="nav-link disabled" href="ide-skripsi.php">
                  <i class="fas fa-file-alt"></i> 
                  <span class="text-muted">Skripsi</span></a></li>';
            } else {
                echo '<li><a class="nav-link" href="ide-skripsi.php"><i class="fas fa-file-alt"></i> <span>Skripsi</span></a></li>';
            } ?>



            <?php if ($d['status'] == "Mahasiswa") {
                echo '<li><a class="nav-link disabled" href="#"><i class="fas fa-comment-dots"></i> <span class="text-muted">Pesan</span></a></li>';
                echo '<li><a class="nav-link disabled" href="upload-skripsi.php"><i class="fas fa-folder-open"></i> <span>Upload Skripsi</span></a></li>';
            } else {
                echo '<li><a class="nav-link" href="chat/chatMahasiswa.php"><i class="fas fa-comment-dots"></i> <span >Pesan</span></a></li>';
                echo '<li><a class="nav-link" href="upload-skripsi.php"><i class="fas fa-folder-open"></i> <span>Upload Skripsi</span></a></li>';
            } ?>
            
        </ul>
    </aside>
</div>