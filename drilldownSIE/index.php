<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Drill Down Tanaman Pangan</title>

		<style type="text/css">

		</style>
	</head>
	<body>
  
<script src="code/highcharts.js"></script>
<script src="code/modules/data.js"></script>
<script src="code/modules/drilldown.js"></script>

<!--
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script> -->

                 
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
           <script type="text/javascript">
// Create the chart   
//var bs=  keywords show result query php in javascript

            //var c="ABC";
            //var b=0.009;
            
Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: '<b>Data Luas Lahan <br/>Tahun 2000-2014</b>'
    },
    subtitle: {
        text: 'GERMAKERTASUSILA (Gresik, Madura, Mojokerto, Surabaya, Sidoarjo, Lamongan)'
    },
    accessibility: {
    announceNewData: {
      enabled: true
    }
  },
    xAxis: {
        type: 'category'
    },
    yAxis: {
        title: {
            text: 'Total percent data'
        }

    },
    legend: {
        enabled: false
    },
    plotOptions: {
        series: {
            borderWidth: 0,
            dataLabels: {
                enabled: true,
                format: '{point.y:.2f}%'
                //format: '{point.y}'
            }
        }
    },

    tooltip: {
        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
    },
    
    "series": [
        {   
            "name": "Data Luas Lahan",
            "colorByPoint": true,
            "data": [
            <?php
            E_ALL | E_STRICT & ~E_NOTICE;
        $host="localhost";
	$user="root";
	$password="";	
	$db = "tanaman_pangan";
	$koneksi=new mysqli($host,$user,$password,$db) or die("Gagal koneksi");
        $query = mysqli_query($koneksi,"select b.*, ((jumlah/total)*100) as prosentase from(
select a.*,(select sum(nilai) from luas_panen where komoditi='Jagung' and tahun>='2000' and tahun<='2014') total
from(
select kabupaten_kota,'Ha' as 'satuan', rentang_tahun, max(tahun) tahun, sum(nilai) as jumlah
from luas_panen where komoditi='Jagung' and tahun>='2000' and tahun<='2014' group by kabupaten_kota)a)b") or die(mysqli_error());
  			while ($data = mysqli_fetch_array($query, MYSQLI_ASSOC)){
                 ?>
                {
                    "name": "<?php echo $data['kabupaten_kota']; ?>",
                    "colorByPoint": true,
                     "y": parseFloat("<?php echo $data['prosentase']; ?>"+"%"),
                    "drilldown": "<?php echo $data['kabupaten_kota']; ?>"
                },
                <?php } ?> 
            ]
        }
    ], 
    "drilldown": { 
        "series": [
        <?php
            E_ALL | E_STRICT & ~E_NOTICE;
        $host="localhost";
	$user="root";
	$password="";	
	$db = "tanaman_pangan";
	$koneksi=new mysqli($host,$user,$password,$db) or die("Gagal koneksi");
        $query = mysqli_query($koneksi,"select b.*, ((jumlah/total)*100) as prosentase from(
select a.*,(select sum(nilai) from luas_panen where komoditi='Jagung' and tahun>='2000' and tahun<='2014') total
from(
select id, kabupaten_kota,'Ha' as 'satuan', rentang_tahun, max(tahun) tahun, sum(nilai) as jumlah
from luas_panen where komoditi='Jagung' and tahun>='2000' and tahun<='2014' group by kabupaten_kota)a)b")or die(mysqli_error());
  			while ($data = mysqli_fetch_array($query, MYSQLI_ASSOC)){
        $tr=$data['kabupaten_kota'];
          ?>
          {       
                "name": "<?php echo $data['kabupaten_kota']; ?>", "colorByPoint": true,
                "id": "<?php echo $data['kabupaten_kota']; ?>",
                "data": [ 
                <?php
$query1 = mysqli_query($koneksi,"select b.*, ((jumlah/total)*100) as prosentase from(
select a.*, (select sum(nilai) from luas_panen where komoditi='Jagung' and tahun between '2000' and '2014' and kabupaten_kota='$tr') total from(
select kabupaten_kota,'Ha' as 'satuan', rentang_tahun, tahun, 
nilai as jumlah
from luas_panen where komoditi='Jagung' and tahun between '2000' and '2014' and kabupaten_kota='$tr')a)b") or die(mysqli_error());
                ?>
                    <?php
              while ($data1 = mysqli_fetch_array($query1, MYSQLI_ASSOC)){
                    echo "[".$data1['tahun'].",".$data1['prosentase']."],";   
                } 
                ?>
                ]
            },<?php } ?>
        ]
    }
});
		</script>
	</body>
</html>
