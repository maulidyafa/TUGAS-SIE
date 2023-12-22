<html>
    <?php
        include '.\conn\server.php';
        if($_SERVER["REQUEST_METHOD"]=="GET"){

            //data tpt21
            $resultTpt21 = $conn->query("SELECT kota, tahun, jmlh_pengangguran FROM tingkat_pengangguran NATURAL JOIN tahun NATURAL JOIN kota WHERE tahun = '2021';");

            while ($rowTpt21 = $resultTpt21->fetch_assoc()) {
                $kotaTpt21[] = $rowTpt21['kota'];
                $thnTpt21[] = $rowTpt21['tahun'];
                $jmlhTpt21[] = $rowTpt21['jmlh_pengangguran'];
            }

            //data tpt22
            $resultTpt22 = $conn->query("SELECT kota, tahun, jmlh_pengangguran FROM tingkat_pengangguran NATURAL JOIN tahun NATURAL JOIN kota WHERE tahun = '2022';");

            while ($rowTpt22 = $resultTpt22->fetch_assoc()) {
                $kotaTpt22[] = $rowTpt22['kota'];
                $thnTpt22[] = $rowTpt22['tahun'];
                $jmlhTpt22[] = $rowTpt22['jmlh_pengangguran'];
            }

            //data tpt23
            $resultTpt23 = $conn->query("SELECT kota, tahun, jmlh_pengangguran FROM tingkat_pengangguran NATURAL JOIN tahun NATURAL JOIN kota WHERE tahun = '2023';");

            while ($rowTpt23 = $resultTpt23->fetch_assoc()) {
                $kotaTpt23[] = $rowTpt23['kota'];
                $thnTpt23[] = $rowTpt23['tahun'];
                $jmlhTpt23[] = $rowTpt23['jmlh_pengangguran'];
            }
            
            //data tpak21
            $resultTpak21 = $conn->query("SELECT kota, tahun, jmlh_partisipasi FROM tingkat_partisipasi NATURAL JOIN tahun NATURAL JOIN kota WHERE tahun = '2021';");

            while ($rowTpak21 = $resultTpak21 ->fetch_assoc()) {
                $kotaTpak21[] = $rowTpak21['kota'];
                $thnTpak21[] = $rowTpak21['tahun'];
                $jmlhTpak21[] = $rowTpak21['jmlh_partisipasi'];
            }
            
            //data tpak22
            $resultTpak22 = $conn->query("SELECT kota, tahun, jmlh_partisipasi FROM tingkat_partisipasi NATURAL JOIN tahun NATURAL JOIN kota WHERE tahun = '2022';");

            while ($rowTpak22 = $resultTpak22 ->fetch_assoc()) {
                $kotaTpak22[] = $rowTpak22['kota'];
                $thnTpak22[] = $rowTpak22['tahun'];
                $jmlhTpak22[] = $rowTpak22['jmlh_partisipasi'];
            }

            //data tpak23
            $resultTpak23 = $conn->query("SELECT kota, tahun, jmlh_partisipasi FROM tingkat_partisipasi NATURAL JOIN tahun NATURAL JOIN kota WHERE tahun = '2023';");

            while ($rowTpak23 = $resultTpak23 ->fetch_assoc()) {
                $kotaTpak23[] = $rowTpak23['kota'];
                $thnTpak23[] = $rowTpak23['tahun'];
                $jmlhTpak23[] = $rowTpak23['jmlh_partisipasi'];
            }

            //data tp21
            $resultTp21 = $conn->query("SELECT kota, tahun, jmlh_perempuan, jmlh_lakilaki FROM total_penduduk NATURAL JOIN tahun NATURAL JOIN kota WHERE tahun = '2021';");

            while ($rowTp21 = $resultTp21 ->fetch_assoc()) {
                $kotaTp21[] = $rowTp21['kota'];
                $thnTp21[] = $rowTp21['tahun'];
                $jmlhPrTp21[] = $rowTp21['jmlh_perempuan'];
                $jmlhLkTp21[] = $rowTp21['jmlh_lakilaki'];
            }

            //data tp22
            $resultTp22 = $conn->query("SELECT kota, tahun, jmlh_perempuan, jmlh_lakilaki FROM total_penduduk NATURAL JOIN tahun NATURAL JOIN kota WHERE tahun = '2022';");

            while ($rowTp22 = $resultTp22 ->fetch_assoc()) {
                $kotaTp22[] = $rowTp22['kota'];
                $thnTp22[] = $rowTp22['tahun'];
                $jmlhPrTp22[] = $rowTp22['jmlh_perempuan'];
                $jmlhLkTp22[] = $rowTp22['jmlh_lakilaki'];
            }

            //data tp23
            $resultTp23 = $conn->query("SELECT kota, tahun, jmlh_perempuan, jmlh_lakilaki FROM total_penduduk NATURAL JOIN tahun NATURAL JOIN kota WHERE tahun = '2023';");

            while ($rowTp23 = $resultTp23 ->fetch_assoc()) {
                $kotaTp23[] = $rowTp23['kota'];
                $thnTp23[] = $rowTp23['tahun'];
                $jmlhPrTp23[] = $rowTp23['jmlh_perempuan'];
                $jmlhLkTp23[] = $rowTp23['jmlh_lakilaki'];
            }
        }
        
    ?>
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SIE Data Angkatan Kerja dan Pengangguran</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Database Connect -->
  <!-- <script type="text/javascript" src="database.js"></script> -->

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Appland
  * Updated: Sep 25 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/free-bootstrap-app-landing-page-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
    <!-- <div class="main-container"></div> -->
        
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top  header-transparent ">
        <div class="container d-flex align-items-center justify-content-between">
            <div class="logo">
                <h1><a href="index.html">Sistem Informasi Eksekutif</a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
            </div>
      
            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                    <li><a class="nav-link scrollto" href="#gallery">DrillDown</a></li>
                    <li><a class="nav-link scrollto" href="#pricing">Analisis What-If</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->
        </div>
    </header>
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 d-lg-flex flex-lg-column justify-content-center align-items-stretch pt-5 pt-lg-0 order-2 order-lg-1">
                    <div>
                        <h1>Sistem Informasi Eksekutif</h1>
                        <h2>Sistem Informasi Eksekutif Lapangan usaha dan Angkatan kerja di Jawa Timur</h2>
                        <h2 style="margin-bottom: 10px;">Nama Tim</h2>
                        <ul>
                            <li> Maulidya Firdausy Al Fitri      (20082010102)</li>
                            <li> Aghni Qisthina Al Rahma      (20082010113)</li>
                            <li> Safina Nur Rahmah      (20082010121)</li>
                            <li> Athallah Bariq Hidayat      (20082010193)</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 d-lg-flex flex-lg-column align-items-stretch order-1 order-lg-2 hero-img">
                    <img src="assets/img/hero-img.png" class="img-fluid" alt="">
                    <!-- data-aos="fade-up" -->
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero -->
  
    <main id="main">

        <!-- ======= Tingkat Pengangguran Terbuka Section ======= -->
        <section id="gallery" class="gallery">
            <div class="container">
                <div class="section-title">
                    <h2>Tingkat Pengangguran Terbuka</h2>
                    <p>Persentase jumlah pengangguran terhadap jumlah angkatan kerja. Mengindikasikan besarnya persentase angkatan kerja yang termasuk dalam pengangguran. TPT yang tinggi menunjukkan bahwa terdapat banyak angkatan kerja yang tidak terserap pada pasar kerja.	</p>
                </div>
            </div>
  
            <div class="chartCard">
                <div class="chartBox">
                    <button onclick="chartResetTpt()">Back</button>
                    <canvas id="myChartTpt"></canvas>
                </div>
            </div>
            <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js/dist/chart.umd.min.js"></script>
            <script>
                // setup 
                const dataTpt = {
                    labels: [ '2021', '2022', '2023' ],
                    datasets: [{
                    label: 'Percentage',
                    data: [5.74, 5.49,	4.88],
                    backgroundColor: [
                        'rgba(255, 26, 104, 0.4)',
                        'rgba(54, 162, 235, 0.4)',
                        'rgba(255, 206, 86, 0.4)'
                    ],
                    borderColor: [
                        'rgba(255, 26, 104)',
                        'rgba(54, 162, 235)',
                        'rgba(255, 206, 86)'
                    ],
                    borderWidth: 1
                    }]
                };
                
                const kotaTpt21 = {
                    labels: [
                        <?php foreach($kotaTpt21 as $kt) {
                            echo "'$kt', ";
                        } ?>
                    ],
                    datasets: [{
                    label: '2021',
                    data: [
                        <?php foreach($jmlhTpt21 as $jml) {
                            echo "'$jml', ";
                        } ?>
                    ],
                    backgroundColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; }
                        ?>
                    ],
                    borderColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; } ?>
                    ],
                    borderWidth: 1
                    }]
                };

                const kotaTpt22 = {
                    labels: [
                        <?php foreach($kotaTpt22 as $kt) {
                            echo "'$kt', ";
                        } ?>    
                    ],
                    datasets: [{
                        label: '2022',
                        data: [
                            <?php foreach($jmlhTpt22 as $jml) {
                                echo "'$jml', ";
                            } ?>      
                        ],
                        backgroundColor: [
                            <?php
                            $i = 0;
                            while($i < 4) { ?>
                                'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                            <?php $i = $i + 1; } ?>
                        ],
                        borderColor: [
                            <?php
                            $i = 0;
                            while($i < 4) { ?>
                                'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                            <?php $i = $i + 1; }
                            ?>
                        ],
                        borderWidth: 1
                    }]
                };
    
                const kotaTpt23 = {
                    labels: [
                        <?php foreach($kotaTpt23 as $kt) {
                            echo "'$kt', ";
                        } ?>    ],
                    datasets: [{
                        label: 'Percentage',
                        data: [
                            <?php foreach($jmlhTpt23 as $jml) {
                                echo "'$jml', ";
                            } ?> 
                        ],
                        backgroundColor: [
                            <?php
                            $i = 0;
                            while($i < 4) { ?>
                                'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                            <?php $i = $i + 1; } ?>
                        ],
                        borderColor: [
                            <?php
                            $i = 0;
                            while($i < 4) { ?>
                                'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                            <?php $i = $i + 1; } ?>
                        ],
                        borderWidth: 1
                    }]
                };

                // config 
                const configTpt = {
                    type: 'bar',
                    data: dataTpt,
                    options: {
                    scales: {
                        y: {
                        beginAtZero: true
                        }
                    }
                    }
                };

                // render init block
                const ctxTpt = document.getElementById('myChartTpt');
                const myChartTpt = new Chart(
                    ctxTpt,
                    configTpt
                );

                function clickHandlerTpt(evt) {
                    const pointsTpt = myChartTpt.getElementsAtEventForMode(evt, 'nearest', { intersect: true }, true);

                    if (pointsTpt.length) {
                        const firstPointTpt = pointsTpt[0];
                        const labelTpt = myChartTpt.data.labels[firstPointTpt.index];
                        const valueTpt = myChartTpt.data.datasets[firstPointTpt.datasetIndex].data[firstPointTpt.index];

                        if(firstPointTpt.index == 0){
                            console.log(kotaTpt21);
                            myChartTpt.config.data = kotaTpt21;
                        } 
                        else if(firstPointTpt.index == 1){
                            console.log(kotaTpt22);
                            myChartTpt.config.data = kotaTpt22;
                        } 
                        else if(firstPointTpt.index == 2){
                            console.log(kotaTpt23);
                            myChartTpt.config.data = kotaTpt23;
                        }
                        myChartTpt.update();
                    }
                }
  
                ctxTpt.onclick = clickHandlerTpt;

                function chartResetTpt(){
                    myChartTpt.config.data = dataTpt;
                    myChartTpt.update();
                }

                // Instantly assign Chart.js version
                const chartVersionTpt = document.getElementById('chartVersion');
                chartVersionTpt.innerText = Chart.version;
            </script>
        </section>
        <!-- End Tingkat Pengangguran Terbuka Section -->

        <!-- ======= Tingkat Partisipasi Angkatan Kerja Section ======= -->
        <section id="gallery" class="gallery">
            <div class="container">
                <div class="section-title">
                    <h2>Tingkat Partisipasi Angkatan Kerja</h2>
                    <p>Persentase partisipasi angkatan kerja yang menunjukkan besar persentase partisipasi angkatan kerja berdasarkan kabupaten atau kota di Jawa Timur. </p>
                </div>
            </div>
  
            <div class="chartCard">
                <div class="chartBox">
                    <button onclick="chartResetTpak()">Back</button>
                    <canvas id="myChartTpak"></canvas>
                </div>
            </div>
            <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js/dist/chart.umd.min.js"></script>
            <script>
                // setup 
                const dataTpak = {
                    labels: [ '2021', '2022', '2023' ],
                    datasets: [{
                    label: 'Percentage',
                    data: [70.00, 71.23, 72.56],
                    backgroundColor: [
                        'rgba(255, 26, 104, 0.4)',
                        'rgba(54, 162, 235, 0.4)',
                        'rgba(255, 206, 86, 0.4)'
                    ],
                    borderColor: [
                        'rgba(255, 26, 104, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)'
                    ],
                    borderWidth: 1
                    }]
                };
                
                const kotaTpak21 = {
                    labels: [
                        <?php foreach($kotaTpak21 as $kt) {
                            echo "'$kt', ";
                        } ?>
                    ],
                    datasets: [{
                    label: '2021',
                    data: [
                        <?php foreach($jmlhTpak21 as $jml) {
                            echo "'$jml', ";
                        } ?>
                    ],
                    backgroundColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; }
                        ?>
                    ],
                    borderColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; } ?>
                    ],
                    borderWidth: 1
                    }]
                };

                const kotaTpak22 = {
                    labels: [
                        <?php foreach($kotaTpak22 as $kt) {
                            echo "'$kt', ";
                        } ?>    
                    ],
                    datasets: [{
                        label: '2022',
                        data: [
                            <?php foreach($jmlhTpak22 as $jml) {
                                echo "'$jml', ";
                            } ?>      
                        ],
                        backgroundColor: [
                            <?php
                            $i = 0;
                            while($i < 4) { ?>
                                'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                            <?php $i = $i + 1; } ?>
                        ],
                        borderColor: [
                            <?php
                            $i = 0;
                            while($i < 4) { ?>
                                'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                            <?php $i = $i + 1; }
                            ?>
                        ],
                        borderWidth: 1
                    }]
                };
    
                const kotaTpak23 = {
                    labels: [
                        <?php foreach($kotaTpak23 as $kt) {
                            echo "'$kt', ";
                        } ?>    ],
                    datasets: [{
                        label: 'Percentage',
                        data: [
                            <?php foreach($jmlhTpak23 as $jml) {
                                echo "'$jml', ";
                            } ?> 
                        ],
                        backgroundColor: [
                            <?php
                            $i = 0;
                            while($i < 4) { ?>
                                'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                            <?php $i = $i + 1; } ?>
                        ],
                        borderColor: [
                            <?php
                            $i = 0;
                            while($i < 4) { ?>
                                'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                            <?php $i = $i + 1; } ?>
                        ],
                        borderWidth: 1
                    }]
                };

                // config 
                const configTpak = {
                    type: 'bar',
                    data: dataTpak,
                    options: {
                        scales: {
                            y: {
                            beginAtZero: true
                            }
                        }
                    }
                };

                // render init block
                const ctxTpak = document.getElementById('myChartTpak');
                const myChartTpak = new Chart(
                    ctxTpak,
                    configTpak
                );

                function clickHandlerTpak(evt) {
                    const pointsTpak = myChartTpak.getElementsAtEventForMode(evt, 'nearest', { intersect: true }, true);

                    if (pointsTpak.length) {
                        const firstPointTpak = pointsTpak[0];
                        const labelTpak = myChartTpak.data.labels[firstPointTpak.index];
                        const valueTpak = myChartTpak.data.datasets[firstPointTpak.datasetIndex].data[firstPointTpak.index];

                        if(firstPointTpak.index == 0){
                            console.log(kotaTpak21);
                            myChartTpak.config.data = kotaTpak21;
                        } 
                        else if(firstPointTpak.index == 1){
                            console.log(kotaTpak22);
                            myChartTpak.config.data = kotaTpak22;
                        } 
                        else if(firstPointTpak.index == 2){
                            console.log(kotaTpak23);
                            myChartTpak.config.data = kotaTpak23;
                        }
                        myChartTpak.update();
                    }
                }
  
                ctxTpak.onclick = clickHandlerTpak;

                function chartResetTpak(){
                    myChartTpak.config.data = dataTpak;
                    myChartTpak.update();
                }

                // Instantly assign Chart.js version
                const chartVersionTpak = document.getElementById('chartVersion');
                chartVersionTpak.innerText = Chart.version;
            </script>
        </section>
        <!-- End Tingkat Partisipasi Angkatan Kerja Section -->

        <!-- ======= Total Penduduk Section ======= -->
        <section id="gallery" class="gallery">
            <div class="container">
                <div class="section-title">
                    <h2>Total Penduduk Jawa Timur</h2>
                    <p> Hasil proyeksi penduduk berdasarkan hasil sensus penduduk dari tahun 2021 hingga 2023 di provinsi Jawa Timur. </p>
                </div>
            </div>
  
            <div class="chartCard">
                <div class="chartBox">
                    <button onclick="chartResetTp()">Back</button>
                    <canvas id="myChartTp"></canvas>
                </div>
            </div>
            <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js/dist/chart.umd.min.js"></script>
            <script>
                const predefinedColors = [
                    'rgb(255, 99, 132)',
                    'rgb(75, 192, 192)',
                    'rgb(255, 205, 86)',
                    'rgb(255, 205, 255)',
                    'rgb(201, 203, 207)',
                    'rgb(54, 162, 235)'
                ];

                function getRandomColors(count) {
                    const colors = [];
                    for (let i = 0; i < count; i++) {
                        colors.push(getRandomColor(predefinedColors));
                    }
                    return colors;
                }

                function getRandomColor(colors) {
                    const randomIndex = Math.floor(Math.random() * colors.length);
                    return colors[randomIndex];
                }

                // setup 
                const dataTp = {
                    labels: [ '2021', '2022', '2023' ],
                    datasets: [{
                        label: 'Total Jiwa',
                        data: [40878789, 41149974, 41416407],
                        backgroundColor: [
                            'rgba(255, 26, 104, 0.4)',
                            'rgba(54, 162, 235, 0.4)',
                            'rgba(255, 206, 86, 0.4)'
                        ],
                        borderColor: [
                            'rgba(255, 26, 104)',
                            'rgba(54, 162, 235)',
                            'rgba(255, 206, 86)'
                        ],
                        borderWidth: 1
                    }]
                };
                
                const kotaTp21 = {
                    labels: [
                        <?php foreach($kotaTp21 as $kt) {
                            echo "'$kt', ";
                        } ?>
                    ],
                    datasets: [{
                    label: '2021',
                    data: [
                        <?php 
                        $i = 0;
                        while($i < count($jmlhPrTp21)){
                            $jml = $jmlhPrTp21[$i] + $jmlhLkTp21[$i];
                            echo "'$jml', ";
                            $i = $i + 1;
                        } ?>
                    ],
                    backgroundColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; }
                        ?>
                    ],
                    borderColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; } ?>
                    ],
                    borderWidth: 1
                    }]
                };

                const kotaTp22 = {
                    labels: [
                        <?php foreach($kotaTp22 as $kt) {
                            echo "'$kt', ";
                        } ?>
                    ],
                    datasets: [{
                    label: '2022',
                    data: [
                        <?php 
                        $i = 0;
                        while($i < count($jmlhPrTp22)){
                            $jml = $jmlhPrTp22[$i] + $jmlhLkTp22[$i];
                            echo "'$jml', ";
                            $i = $i + 1;
                        } ?>
                    ],
                    backgroundColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; }
                        ?>
                    ],
                    borderColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; } ?>
                    ],
                    borderWidth: 1
                    }]
                };

                const kotaTp23 = {
                    labels: [
                        <?php foreach($kotaTp23 as $kt) {
                            echo "'$kt', ";
                        } ?>
                    ],
                    datasets: [{
                    label: '2023',
                    data: [
                        <?php 
                        $i = 0;
                        while($i < count($jmlhPrTp23)){
                            $jml = $jmlhPrTp23[$i] + $jmlhLkTp23[$i];
                            echo "'$jml', ";
                            $i = $i + 1;
                        } ?>
                    ],
                    backgroundColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; }
                        ?>
                    ],
                    borderColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; } ?>
                    ],
                    borderWidth: 1
                    }]
                };

                const jkTp23 = {
                    labels: ['Perempuan', 'Laki-Laki'],
                    datasets: [{
                    label: '2023',
                    data: [
                        <?php 
                        $i = 0;
                        while($i < count($jmlhPrTp23)){
                            $jml = $jmlhPrTp23[$i] + $jmlhLkTp23[$i];
                            echo "'$jml', ";
                            $i = $i + 1;
                        } ?>
                    ],
                    backgroundColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; }
                        ?>
                    ],
                    borderColor: [
                        <?php
                        $i = 0;
                        while($i < 4) { ?>
                            'rgba(255, 26, 104, 0.4)', 'rgba(54, 162, 235, 0.4)', 'rgba(255, 206, 86, 0.4)', 'rgba(75, 192, 192, 0.4)', 'rgba(153, 102, 255, 0.4)', 'rgba(255, 159, 64, 0.4)', 'rgba(0, 0, 0, 0.4)',
                        <?php $i = $i + 1; } ?>
                    ],
                    borderWidth: 1
                    }]
                };

                // config 
                const configTp = {
                    type: 'bar',
                    data: dataTp,
                    options: {
                    scales: {
                        y: {
                        beginAtZero: true
                        }
                    }
                    }
                };

                // render init block
                const ctxTp = document.getElementById('myChartTp');
                const myChartTp = new Chart(
                    ctxTp,
                    configTp
                );

                function clickHandlerTp(evt) {
                    const pointsTp = myChartTp.getElementsAtEventForMode(evt, 'nearest', { intersect: true }, true);

                    if (pointsTp.length) {
                        const firstPointTp = pointsTp[0];
                        const labelTp = myChartTp.data.labels[firstPointTp.index];
                        const valueTp = myChartTp.data.datasets[firstPointTp.datasetIndex].data[firstPointTp.index];

                        if(firstPointTp.index == 0){
                            console.log(kotaTp21);
                            myChartTp.config.data = kotaTp21;
                        } 
                        // else if(myChartTp.data.labels[0] == );
                        else if(firstPointTp.index == 1){
                            console.log(kotaTp22);
                            myChartTp.config.data = kotaTp22;
                        } 
                        else if(firstPointTp.index == 2){
                            console.log(kotaTp23);
                            myChartTp.config.data = kotaTp23;
                        }
                        myChartTp.update();
                    }
                }
  
                ctxTp.onclick = clickHandlerTp;

                function chartResetTp(){
                    myChartTp.config.data = dataTp;
                    myChartTp.update();
                }

                // Instantly assign Chart.js version
                const chartVersionTp = document.getElementById('chartVersion');
                chartVersionTp.innerText = Chart.version;
            </script>
        </section>
        <!-- End Tingkat Partisipasi Angkatan Kerja Section -->

</main>
<!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer">
<div class="footer-top">
  <div class="container">
    <h5>Sistem Informasi Eksekutif</h5>
    <p> Maulidya Firdausy Al Fitri (20082010102) Aghni Qisthina Al Rahma (20082010113) Safina Nur Rahmah (20082010121) Athallah Bariq Hidayat (20082010193)
    </p>
  </div>
</div>
</footer><!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>

</body>
</html>