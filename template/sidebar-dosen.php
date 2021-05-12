<?php
include("../database/koneksi.php");
include("header.php");

?>

<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="index-dosen.php">Sistem Skripsi</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="index-dosen.php">SS</a>
        </div>
        <ul class="sidebar-menu">
            <li><a class="nav-link" href="index-dosen.php"><i class="fas fa-university"></i> <span>Pemberitahuan</span></a></li>
            <li><a class="nav-link " href="dosen-ideskripsi.php"><i class="fas fa-file-alt"></i> <span>Skripsi</span></a></li>
            <li><a class="nav-link" href="chat/chatDosen.php"><i class="fas fa-comment-dots"></i> <span >Pesan</span></a></li>
            <li><a class="nav-link " href="list-skripsi.php"><i class="fas fa-folder-open"></i> <span>List Skripsi</span></a></li>
        </ul>
    </aside>
</div>