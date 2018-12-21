<div class="content">
    <div class="col-md-6 add-dm">
        <h4 class="text-center"><b>Sửa Địa Điểm Du Lịch</b></h4>
    </div>
    <div class="clearfix"></div>
    <form method="post">
        <div class="form">
            <table class="table">
                <tr>
                    <td><P>Tên</p></td>
                    <td><textarea name="noidung" class="form-control" id="" cols="30" rows="1" placeholder="<?php echo $dddl['ten_dddl'];?>"></textarea></td>
                </tr>
                <tr>
                    <td><P>Tiêu đề</p></td>
                    <td><textarea name="noidung" class="form-control" id="" cols="30" rows="1" placeholder="<?php echo $dddl['tieu_de_dddl'];?>"></textarea></td>
                </tr>
                <tr>
                    <td><P>Nội dung</p></td>
                    <td><textarea name="noidung" class="form-control" id="" cols="30" rows="10" placeholder="<?php echo $dddl['noi_dung_dddl'];?>"></textarea></td>
                </tr>
                <tr>
                    <td><P>Hình ảnh</p></td>
                    <td><input type="file" name="img" class="form-control" accept="image/jpg"></td>
                </tr>
                <tr>
                    <td><p>Lựa chọn danh mục</p></td>
                    <td><select name="chu de" class="form-control">
                            <option value="tn" selected>Trong Nước</option>
                            <option value="nn" <?php if ($dddl['chu_de'] === "Ngoài Nước") echo "selected"?>>Ngoài Nước</option>
                        </select>
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-md-3 form-group pull-right">
            <input type="submit" name="ok" value="Lưu" class="btn btn-primary btn-block">
        </div>
    </form>
</div>