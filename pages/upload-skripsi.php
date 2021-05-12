<?php 
error_reporting(0);
include ("../database/koneksi.php");
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
                <h1>Upload Skripsi</h1>
              </div>
              <div class="d-flex d-flex align-items-end flex-column bd-highlight col-lg-5">
                <span><?php echo $d['jurusan']; echo "(".$d['konsentrasi'].")"; ?></span>
                <h5><?php echo $d['nama'];?></h5>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12">
                <div class="card">
                  <div class="card-body">
                    <?php if ($d['status'] == "Skripsi"){ echo '
                    <div class="row">
                      <div class="col-md-5 col-lg-2 d-xl-none mb-2">
                        <button class="btn btn-primary upload-skripsi btn-lg btn-block"><i class="fas fa-plus"></i> Upload Skripsi</button>
                      </div>
                      <div class="d-none d-sm-block d-sm-none d-md-block d-md-none d-md-block d-lg-none d-xl-block mb-2 ml-2">
                        <button class="btn btn-primary upload-skripsi btn-lg btn-block"><i class="fas fa-plus"></i> Upload Skripsi</button>
                      </div>
                      <div class="col-lg-10 d-flex justify-content-end align-items-center">
                      </div>
                    </div>
                  ';}?>
                    <hr>
                    <div class="col-lg-12 mb-2">
                      <div class="form-input"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="isi-skripsi"></div>
          </div>
        </section>
      </div>

      <?php include ("../template/footer.php"); ?>

      <script type="text/javascript">

        $(".upload-skripsi").click(function(){
          $('.form-input').load('tambah-skripsi.php').hide().fadeIn(500);
        });

        $('.isi-skripsi').load('tampil-kumpulan-skripsi.php');

      </script>
    </body>
    </html>
