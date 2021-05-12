<?php 
error_reporting(0);
include ("../database/koneksi.php");
include ("data/data-hapus-jurusan.php");
include ("data/data-hapus-konsentrasi.php");
include ("../akses.php");

$user = $_SESSION["nama"];
$nim = $_SESSION["id"];
$sta = mysqli_query($conn,"select * from mahasiswa where nim='$nim'");
$d=mysqli_fetch_array($sta);

$cek = mysqli_num_rows(mysqli_query($conn,"select * from skripsi where nama = '$user'"));

?>
<?php include ("../template/sidebar-mahasiswa.php"); ?>



        <!-- Main Content -->
        <div class="main-content">
          <section class="section">
            <div class="section-header">
              <div class="col-lg-7">
              <h1>Pemberitahuan</h1>
              </div>
              <div class="d-flex d-flex align-items-end flex-column bd-highlight col-lg-5">
                <span><?php echo $d['jurusan']; echo "(".$d['konsentrasi'].")"; ?></span>
                <h5><?php echo $d['nama'];?></h5>
              </div>
            </div>
            <?php if ($d['status'] == "Mahasiswa"){ echo '
            <div class="row">
              <div class="col-lg-12">
                <div class="card">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-lg-9 mt-5 pl-5">
                        <h3>Selamat Datang, '; echo $user; echo '. Mahasiswa Baru Ya.</h3>
                        <span>Saat ini sistem hanya bisa melakukan login!, sistem ini akan bisa digunakan jika admin telah menerima dan memvalidasimu jika kamu sudah mulai melakukan skripsi!, tetep semangat ya menjalani kehidupanmu di kampus !!!, jika kamu sudah memasuki semester akhir dan masih belum bisa mengakses ide skripsi. silahkan tanyakan ke fakultasnya masing-masing.
                        </span>  
                      </div>
                      <div class="col-lg-3">
                          <img alt="image" src="../assets/img/jelaskan.jpg" class="img-fluid" alt="Responsive image">
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            '; }; ?>
            <?php if ($d['status'] == "Skripsi"){ 
              if ($cek >= 1){ echo '
            <div class="row">
            <div class="col-lg-12">
            <div class="card">
            <div class="card-body">
            <div class="row">
            <div class="isi-skripsi"></div>
            </div>
            </div>
            </div>
            </div>
            </div>';}else{echo '
            <div class="row">
              <div class="col-lg-12">
                <div class="card">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-lg-9 mt-5 pl-5">
                        <h3>Selamat Datang, '; echo $user; echo '. Sang Pejuang Skripsi.</h3>
                        <span>Selamat ya karena menempuh semester akhir dimana setiap mahasiswa S1 pasti akan mengalami namanya fase pengerjaan Skripsi. Saat ini menu Ide Skripsi dan Pesan sudah bisa diakses. Kamu bisa mengajukan ide skripsi dan dapat bertanya seputar skripsi pada menu pesan. Jadi, Semangat untuk skripsimu !!! 
                        </span>  
                      </div>
                      <div class="col-lg-3">
                          <img alt="image" src="../assets/img/jelaskan.jpg" class="img-fluid" alt="Responsive image">
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            ';} }; ?>
          </div>
        </div>
      </section>
    </div>
    
    <?php include ("../template/footer.php"); ?>

    <script type="text/javascript">

      $('.isi-skripsi').load('tampil-skripsi-mah.php');

    </script>
  </body>
  </html>
