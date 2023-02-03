	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85" method="index.php?view=<?php echo 'ADDORDER'; ?>">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							
					
                        <?php 
                        $code = $_GET['code'];
						// echo "<img src='https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=https%3A%2F%2Fhttp://localhost/public_html/RECEIPT/?code=".$code."%2F&choe=UTF-8' style='width:100%; height:500px;'/>";
							echo "<img src='https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=localhost/public_html/RECEIPT/?code=".$code."' style='width:100%; height:500px;'/>";
						?>
						</div>

						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
									<a href="index.php?view=<?php echo 'HOME'; ?>&action=empty" class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10" style="width:100%;">CREATE ANOTHER TRANSACTION</a>
						
						</div>
					</div>
				</div>

		
			</div>
		</div>
	</form>
		
	