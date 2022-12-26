<div id="popup-wallet" class="modal popup-wallet">
	<div class="header">Nạp tiền vào tài khoản</div>
	<form action="{{ route('post.recharge.process') }}" id="form-wallet" name="NLpayBank" method="POST">
		@csrf
		<div class="content">
			<div class="content-header">
				<div class="item js-item-tab-wallet active" data-active=".type-atm">Nạp qua thẻ ATM</div>
				<div class="item js-item-tab-wallet" data-active=".type-vi">Ví Ngân Lượng</div>
			</div>
			<div class="content-content">
				<div class="form-group">
					<label for="phone" style="font-weight: 400">Số tiền cần nạp<span class="cRed">(*)</span></label>
					<input type="text" name="money" id="money_online"  value="{{ str_replace(',','',\Cart::subtotal(0)) }}" data-type="currency" placeholder="200,000" class="form-control" />
					<span class="text-danger"></span>
				</div>
				<div class="type-atm type active">
					<input type="hidden" value="ATM_ONLINE" name="option_payment">
					<label for="phone" style="font-weight: 400">Chọn thẻ thanh toán<span class="cRed">(*)</span></label>
					<ul class="cardList">
						<li class="bank-online-methods ">
							<label for="vcb_ck_on">
								<i class="BIDV" title="Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam"></i>
								<input type="radio" value="BIDV" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="vcb_ck_on">
								<i class="VCB" title="Ngân hàng TMCP Ngoại Thương Việt Nam"></i>
								<input type="radio" value="VCB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="vnbc_ck_on">
								<i class="DAB" title="Ngân hàng Đông Á"></i>
								<input type="radio" value="DAB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="tcb_ck_on">
								<i class="TCB" title="Ngân hàng Kỹ Thương"></i>
								<input type="radio" value="TCB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_mb_ck_on">
								<i class="MB" title="Ngân hàng Quân Đội"></i>
								<input type="radio" value="MB" name="bankcode">

							</label></li>
						<li class="bank-online-methods ">
							<label for="sml_atm_vib_ck_on">
								<i class="VIB" title="Ngân hàng Quốc tế"></i>
								<input type="radio" value="VIB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_vtb_ck_on">
								<i class="ICB" title="Ngân hàng Công Thương Việt Nam"></i>
								<input type="radio" value="ICB" name="bankcode">

							</label></li>
						<li class="bank-online-methods ">
							<label for="sml_atm_exb_ck_on">
								<i class="EXB" title="Ngân hàng Xuất Nhập Khẩu"></i>
								<input type="radio" value="EXB" name="bankcode">

							</label></li>
						<li class="bank-online-methods ">
							<label for="sml_atm_acb_ck_on">
								<i class="ACB" title="Ngân hàng Á Châu"></i>
								<input type="radio" value="ACB" name="bankcode">

							</label></li>
						<li class="bank-online-methods ">
							<label for="sml_atm_hdb_ck_on">
								<i class="HDB" title="Ngân hàng Phát triển Nhà TPHCM"></i>
								<input type="radio" value="HDB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_msb_ck_on">
								<i class="MSB" title="Ngân hàng Hàng Hải"></i>
								<input type="radio" value="MSB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_nvb_ck_on">
								<i class="NVB" title="Ngân hàng Nam Việt"></i>
								<input type="radio" value="NVB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_vab_ck_on">
								<i class="VAB" title="Ngân hàng Việt Á"></i>
								<input type="radio" value="VAB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_vpb_ck_on">
								<i class="VPB" title="Ngân Hàng Việt Nam Thịnh Vượng"></i>
								<input type="radio" value="VPB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_scb_ck_on">
								<i class="SCB" title="Ngân hàng Sài Gòn Thương tín"></i>
								<input type="radio" value="SCB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="bnt_atm_pgb_ck_on">
								<i class="PGB" title="Ngân hàng Xăng dầu Petrolimex"></i>
								<input type="radio" value="PGB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="bnt_atm_gpb_ck_on">
								<i class="GPB" title="Ngân hàng TMCP Dầu khí Toàn Cầu"></i>
								<input type="radio" value="GPB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="bnt_atm_agb_ck_on">
								<i class="AGB" title="Ngân hàng Nông nghiệp &amp; Phát triển nông thôn"></i>
								<input type="radio" value="AGB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="bnt_atm_sgb_ck_on">
								<i class="SGB" title="Ngân hàng Sài Gòn Công Thương"></i>
								<input type="radio" value="SGB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_bab_ck_on">
								<i class="BAB" title="Ngân hàng Bắc Á"></i>
								<input type="radio" value="BAB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_bab_ck_on">
								<i class="TPB" title="Tền phong bank"></i>
								<input type="radio" value="TPB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_bab_ck_on">
								<i class="NAB" title="Ngân hàng Nam Á"></i>
								<input type="radio" value="NAB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_bab_ck_on">
								<i class="SHB" title="Ngân hàng TMCP Sài Gòn - Hà Nội (SHB)"></i>
								<input type="radio" value="SHB" name="bankcode">
							</label>
						</li>
						<li class="bank-online-methods ">
							<label for="sml_atm_bab_ck_on">
								<i class="OJB" title="Ngân hàng TMCP Đại Dương (OceanBank)"></i>
								<input type="radio" value="OJB" name="bankcode">
							</label>
						</li>
					</ul>
				</div>
				<div class="type-fast type" id="form-pay-fast">
					<p>Bạn hãy gửi yêu cầu nạp số tiền bạn mong muốn và admin sẽ xử lý. Sau đó nhân viên sẽ liên hệ với bạn để xác nhận và thanh toán sau.</p>
				</div>
				<div class="type-vi type">
					<input type="hidden" value="NL" name="option_payment" disabled>
					<p>Thanh toán trực tuyến AN TOÀN và ĐƯỢC BẢO VỆ, sử dụng thẻ ngân hàng trong và ngoài nước hoặc nhiều hình thức tiện lợi khác. Được bảo hộ & cấp phép bởi NGÂN HÀNG NHÀ NƯỚC, ví điện tử duy nhất được cộng đồng ƯA THÍCH NHẤT 2 năm liên tiếp, Bộ Thông tin Truyền thông trao giải thưởng Sao Khuê</p>
					<p>Giao dịch. Đăng ký ví NgânLượng.vn miễn phí <a href="https://www.nganluong.vn/vn/home.html" target="_blank">tại đây</a></p>
				</div>
			</div>
		</div>
		<div class="footer text-center">
			<a  href="#" rel="modal:close" class="btn btn-light">Huỷ bỏ</a>
			<button type="submit" class="btn  btn-pink js-save-wallet"><i class="fa fa-save"></i> Thanh toán</button>
		</div>
	</form>
</div>