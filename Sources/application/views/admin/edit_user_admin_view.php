<div class="row register-form">
    <form action="<?php echo base_url();?>index.php/admin/pro_add_user" method="post" class="custom-form" style="padding: 0; margin: 0; width: 100%">
        <h1>Sửa Thành Viên</h1>
        <div class="form-row form-group">
            <div class="col-lg-4 col-md-4 label-column"><label class="col-form-label" for="name-input-field">Tên Đăng Nhập</label></div>
            <div class="col-lg-7 col-md-7 input-column"><input class="form-control" type="text" name="tk" readonly placeholder="<?php echo $user['ten_dang_nhap'];?>"></div>
        </div>
        <div class="form-row form-group">
            <div class="col-lg-4 col-md-4 label-column"><label class="col-form-label" for="pawssword-input-field">Mật Khẩu</label></div>
            <div class="col-lg-7 col-md-7 label-column"><input class="form-control" type="text" name="mk" placeholder="<?php echo $user['mat_khau'];?>"></div>
        </div>
        <div class="form-row form-group">
            <div class="col-lg-4 col-md-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Họ Tên</label></div>
            <div class="col-lg-7 col-md-7 label-column"><input class="form-control" type="text" name="ht" placeholder="<?php echo $user['ho_ten'];?>"></div>
        </div>
        <div class="form-row form-group">
            <div class="col-lg-4 col-md-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Giới Tính</label></div>
            <div class="col-lg-4 col-md-4 label-column">
                <div class="Sex">
                    <div class="form-check"><input class="form-check-input" type="radio" name="gt" value="Nam"><label class="form-check-label">Nam</label></div>
                    <div class="form-check"><input class="form-check-input" type="radio" name="gt" value="Nữ"><label class="form-check-label">Nữ</label></div>
                </div>
            </div>
        </div>
        <div class="form-row form-group">
            <div class="col-lg-4 col-md-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Email</label></div>
            <div class="col-lg-7 col-md-7 label-column"><input class="form-control" type="text" name="email" placeholder="<?php echo $user['email'];?>"></div>
        </div>
        <div class="form-row form-group">
            <div class="col-lg-4 col-md-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Ngày Sinh</label></div>
            <div class="col-lg-7 col-md-7 label-column"><input class="form-control" type="date" name="ns"></div>
        </div>
        <div class="form-row form-group">
            <div class="col-lg-4 col-md-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Số Điện Thoại</label></div>
            <div class="col-lg-7 col-md-7 label-column"><input class="form-control" type="tel" name="sdt" placeholder="<?php echo $user['sdt'];?>"></div>
        </div>
        <div class="form-row form-group">
            <div class="col-lg-4 col-md-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Địa Chỉ</label></div>
            <div class="col-lg-7 col-md-7 label-column"><input class="form-control" type="text" name="dc" placeholder="<?php echo $user['dia_chi'];?>"></div>
        </div>
        <input class="btn btn-light submit-button" type="submit" value="Lưu">
    </form>
</div>