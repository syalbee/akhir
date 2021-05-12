<?php 
error_reporting(0);
include ("../database/koneksi.php");
include ("../akses.php");
include ("../akses-mahasiswa.php");

$user = $_SESSION["nama"];
$nidn = $_SESSION["id"];

$sta = mysqli_query($conn,"select * from dosen where nidn='$nidn'");
$d=mysqli_fetch_array($sta);
$konsen = $d['konsentrasi'];

$cek = mysqli_num_rows(mysqli_query($conn,"select * from skripsi where konsentrasi='$konsen' and status ='Tunggu'"));

?>
<?php include ("../template/sidebar-dosen.php"); ?>
<body>


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
            <?php if ($cek == 0){ echo '
            <div class="row">
            <div class="col-lg-12">
            <div class="card">
            <div class="card-body">
            <div class="row">
            <div class="col-lg-9 mt-5 pl-5">
            <h3>Belum Ada Ide Skripsi Yang Tersedia</h3>
            <span>Ide skripsi belum di isi oleh para mahasiswa. Silahkan tunggu sampai para mahasiswa melakukan pengisian untuk ide skripsinya.
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

            <?php if ($cek >= 1){ echo '
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
            </div>'; }; ?>
          </div>
        </div>
      </section>
    </div>
    
    <?php include ("../template/footer.php"); ?>

    <script type="text/javascript">

      $('.isi-skripsi').load('tampil-ideskripsi.php');

    </script>

  </body>
  </html>
