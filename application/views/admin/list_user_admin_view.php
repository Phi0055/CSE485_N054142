<div class="col-md-12 col-md-offset-1 me-list-admin">
    <div class="panel panel-default panel-table">
        <div class="panel panel-default panel-table">
            <div class="panel-heading">
                <div class="row">
                    <div class="col col-xs-6">
                        <h3 class="panel-title">Bảng User - Thông tin User</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <table class="table table-striped table-bordered table-list">
                <thead>
                <tr>
                    <th><em class="fa fa-cog"></em></th>
                    <th class="hidden-xs">ID</th>
                    <th>Tên Đăng Nhập</th>
                    <th>Mật Khẩu</th>
                    <th>Cấp Độ</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($listUser as $row){?>
                    <tr>
                        <td class="row" style="box-sizing: border-box;">
                            <a class="btn btn-default col-6" style="border-right: 2px solid white;"><em class="fa fa-pencil"></em></a>
                            <a class="btn btn-danger col-6"><em class="fa fa-trash"></em></a>
                        </td>
                        <td class="hidden-xs"><?php echo $row['id_tk']?></td>
                        <td><?php echo $row['ten_dang_nhap']?></td>
                        <td><?php echo $row['mat_khau']?></td>
                        <td><?php echo $row['cap_do']?></td>
                    </tr>
                <?php
                }
                ?>
                </tbody>
            </table>
        </div>
        <div class="panel-footer">
            <div class="row">
                <div class="col col-xs-4">Page 1 of 5
                </div>
                <div class="col col-xs-8">
                    <ul class="pagination hidden-xs pull-right">
                        <li><a href="">1</a></li>
                        <li><a href="">2</a></li>
                        <li><a href="">3</a></li>
                        <li><a href="">4</a></li>
                        <li><a href="">5</a></li>
                    </ul>
                    <ul class="pagination visible-xs pull-right">
                        <li><a href="">«</a></li>
                        <li><a href="">»</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>