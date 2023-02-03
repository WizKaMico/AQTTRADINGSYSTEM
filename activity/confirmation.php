<!-- breadcrumb -->
	<div class="container">
		
	</div>
	<?php $email = $_GET['email']; ?>	

	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85" action="action/verification.php" method="POST">
		<div class="container">
			<div class="row">
						<div class="col-sm-12 col-lg-12 col-xl-12 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							ACCOUNT VERIFICATION
						</h4>

						

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
							
								
								<div class="p-t-15">
									
									<div class="bor8 bg0 m-b-22">
										<input class="stext-111 cl12 plh3 size-111 p-lr-15" type="email" name="email" value="<?php echo $email; ?>" style="width:100%; color:black;" required="" readonly="">
									</div>

									<div class="bor8 bg0 m-b-22">
										<input class="stext-111 cl12  plh3 size-111 p-lr-15" type="number" name="ecode" placeholder="Enter 5 Digit Code" style="width:100%; color:black;" required>
									</div>

									



									
									
								
										
								</div>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
						
						</div>

						<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" name="verify">
							VERIFY
						</button>

						
					</div>
				</div>

			
			</div>
		</div>
	</form>