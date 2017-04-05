<?php
include 'koneksi.php';
    if( !$xml = simplexml_load_file('barang.xml') ) //using simplexml_load_file function to load xml file
    {
        echo 'load XML failed ! ';
    }
    else
    {
        echo '<h1>Data barang</h1>';
		foreach( $xml as $simpan ) //parse the xml file into object
        {
			
			$nama_barang = $simpan->nama_barang;
			$satuan_barang = $simpan->satuan_barang; 
			$harga_barang = $simpan->harga_barang;
			$pt_asal = $simpan->pt_asal;
			$kodewil_asal = $simpan->kodewil_asal;	
			$pt_tujuan = $simpan->pt_tujuan;
			$kodewil_tujuan = $simpan->kodewil_tujuan;

            
            echo 'nama_barang :	'.$nama_barang.'<br/>';
            echo 'satuan_barang : '.$satuan_barang.'<br />';
			echo 'harga_barang : '.$harga_barang.'<br />';
			echo 'pt_asal : '.$pt_asal.'<br />';
			echo 'kodewil_asal : '.$kodewil_asal.'<br />';
			echo 'pt_tujuan : '.$pt_tujuan.'<br />';
			echo 'kodewil_tujuan : '.$kodewil_tujuan.'<br />';
			

//save to database
			$q = "INSERT INTO databarang VALUES('','$nama_barang','$satuan_barang','$harga_barang','$pt_asal','$kodewil_asal','$pt_tujuan','$kodewil_tujuan')";
			$result = mysql_query($q);
        }
			if ($result) {
			echo '<h2>Data Berhasil di Simpan </h2>';
			}
			else echo '<h2>Data Gagal di Simpan</h2>';
    }
?> 