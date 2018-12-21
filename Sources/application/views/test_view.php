<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Tiêu đề web</title>
</head>

<body>
<div class="content">
    <div class="col-md-6 add-dm">
        <h4 class="text-center"><b>Sửa Địa Điểm Du Lịch</b></h4>
    </div>
    <div class="clearfix"></div>
    <form method="post" action="<?php echo base_url();?>index.php/test/add">
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
            <input type="submit" name="ok" value="Lưu" class="btn btn-primary btn-block">
        </div>
    </form>
</div>
</body>
</html>