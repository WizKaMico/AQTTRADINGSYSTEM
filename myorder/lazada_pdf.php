<?php
	function generateRow(){
		$contents = '';
		include_once('../ADMIN/connection/connection.php');
		$sql = "SELECT * FROM lazada_offline_product limit 5";

		//use for MySQLi OOP
		$query = $conn->query($sql);
		while($row = $query->fetch_assoc()){
			$contents .= "
			<tr>
				<td>".$row['sku']."</td>
				<td>".$row['name']."</td>
				<td>".$row['qty']."</td>
				<td>PHP ".$row['price']."</td>
			</tr>
			";
		}
		////////////////

		//use for MySQLi Procedural
		// $query = mysqli_query($conn, $sql);
		// while($row = mysqli_fetch_assoc($query)){
		// 	$contents .= "
		// 	<tr>
		// 		<td>".$row['id']."</td>
		// 		<td>".$row['firstname']."</td>
		// 		<td>".$row['lastname']."</td>
		// 		<td>".$row['address']."</td>
		// 	</tr>
		// 	";
		// }
		////////////////
		
		return $contents;
	}

	require_once('tcpdf/tcpdf.php');  
    $pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  
    $pdf->SetCreator(PDF_CREATOR);  
    $pdf->SetTitle("Generated PDF using TCPDF");  
    $pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);  
    $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));  
    $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
    $pdf->SetDefaultMonospacedFont('helvetica');  
    $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);  
    $pdf->SetMargins(PDF_MARGIN_LEFT, '10', PDF_MARGIN_RIGHT);  
    $pdf->setPrintHeader(false);  
    $pdf->setPrintFooter(false);  
    $pdf->SetAutoPageBreak(TRUE, 10);  
    $pdf->SetFont('helvetica', '', 11);  
    $pdf->AddPage();  
    $pdf->Image('aqt.png',100,5,20);
    $content = '';  
    $content .= '
    <br>
      	<h2 align="center">OFFICIAL PRODUCT LIST</h2>
      	<h4>AQT MANAGEMENT | LAZADA</h4>
      	<table border="1" cellspacing="0" cellpadding="3">  
           <tr>  
                 <th width="25%">SKU</th>
				<th width="25%">NAME</th>
				<th width="25%">QTY</th>
				<th width="25%">PRICE</th> 
           </tr>  
      ';  
    $content .= generateRow();  
    $content .= '</table>';  
    $pdf->writeHTML($content);  
    ob_clean();
    $pdf->Output('lazada.pdf', 'I');
	

?>