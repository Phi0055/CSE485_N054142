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
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="id-input-field">ID</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" placeholder="ID123" disabled></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Tên Đăng Nhập</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text" placeholder="username123" disabled></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Họ Tên</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Giới Tính</label></div>
                        <div class="col-sm-4">
                            <div class="Sex">
                                <div class="form-check"><input class="form-check-input" type="radio" name="sex" value="Nam"><label class="form-check-label">Nam</label></div>
                                <div class="form-check"><input class="form-check-input" type="radio" name="sex" value="Nữ"><label class="form-check-label">Nữ</label></div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Email</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Ngày Sinh</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="date"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Số Điện Thoại</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="tel"></div>
                    </div>
                    <div class="form-row form-group">
                        <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Địa Chỉ</label></div>
                        <div class="col-sm-6 input-column"><input class="form-control" type="text"></div>
                    </div>
                    <input class="btn btn-light submit-button" type="submit" value="Cập Nhật">
                </form>
            </div>
        </div>
    </div>
</div>