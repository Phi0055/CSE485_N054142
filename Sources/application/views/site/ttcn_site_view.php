<div class="container me-TTCN">
    <div class="row">
        <div class="col-md-6 col-lg-4">
            <h2>Bạn nên nhập thông tin chính xác.</h2>
            <br>
            <h4>Thông tin của bạn sẽ được bảo mật tuyệt đối và sẽ được sử dụng để xác nhận dịch vụ của chúng tôi</h4>
            <br>
            <img src="<?php echo base_url();?>assets/img/ttcn.PNG" alt="H/A">
        </div>
        <div class="col-md-6 col-lg-8">
            <div style="position: relative;">
                <button class="btn" id="me-setting-ttcn"><i class="fa fa-cog"></i></button>
            </div>
            <div class="row register-form">
                <form class="custom-form">
                    <h1>Thông Tin Cá Nhân</h1>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label">ID</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" placeholder="<?php echo $user['id_tk'];?>" disabled></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label">Tên Đăng Nhập</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" placeholder="<?php echo $user['ten_dang_nhap'];?>" disabled></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label">Họ Tên</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" value="<?php echo $user['ho_ten'];?>"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label">Giới Tính</label></div>
                        <div class="col-sm-4">
                            <div class="Sex">
                                <div class="form-check"><input class="form-check-input" type="radio" name="gt" value="Nam" checked><label class="form-check-label">Nam</label></div>
                                <div class="form-check"><input class="form-check-input" type="radio" name="gt" value="Nữ" <?php if ($user['gioi_tinh'] === "Nữ")echo "checked";?>><label class="form-check-label">Nữ</label></div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label">Email</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" value="<?php echo $user['email'];?>"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label">Ngày Sinh</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="date" value="<?php echo $user['ngay_sinh'];?>"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label">Số Điện Thoại</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" value="<?php echo $user['sdt'];?>"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label">Địa Chỉ</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" value="<?php echo $user['dia_chi'];?>"></div>
                    </div>
                    <input class="btn btn-light submit-button" type="submit" value="Cập Nhật">
                </form>
            </div>
        </div>
    </div>
</div>