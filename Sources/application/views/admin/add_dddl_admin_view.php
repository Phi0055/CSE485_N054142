<div class="content">
    <div class="col-md-6 add-dm">
        <h4 class="text-center"><b>Thêm Địa Điểm Du Lịch</b></h4>
    </div>
    <form method="post">
        <div class="form">
            <table class="table">
                <tr>
                    <td><P>Tên</p></td>
                    <td><input type="text" name="title" class="form-control"></td>
                </tr>
                <tr>
                    <td><P>Tiêu đề</p></td>
                    <td><input type="text" name="title" class="form-control"></td>
                </tr>
                <tr>
                    <td><P>Nội dung</p></td>
                    <td><textarea name="content" class="form-control" id="" cols="30" rows="10"></textarea></td>
                </tr>
                <tr>
                    <td><P>Hình ảnh</p></td>
                    <td><input type="file" name="img" class="form-control"></td>
                </tr>
                <tr>
                    <td><p>Lựa chọn danh mục</p></td>
                    <td><select name="cat" class="form-control">
                            <option value="">Trong nước</option>
                            <option value="">Ngoài nước</option>
                        </select>
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-md-3 form-group pull-right">
            <input type="submit" name="ok" value="Thêm" class="btn btn-primary btn-block">
        </div>
    </form>
</div>