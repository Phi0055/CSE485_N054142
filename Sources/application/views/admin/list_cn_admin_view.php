<div class="col-md-12 col-md-offset-1 me-list-admin">
    <div class="panel panel-default panel-table">
        <div class="panel panel-default panel-table">
            <div class="panel-heading">
                <div class="row">
                    <div class="col col-xs-6">
                        <h3 class="panel-title">Bảng Cẩm Nang</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <table class="table table-striped table-bordered table-list">
                <thead>
                <tr>
                    <th><em class="fa fa-cog"></em></th>
                    <th>ID</th>
                    <th>Tiêu Đề</th>
                    <th>Nội Dung Chi Tiết</th>
                    <th>Link Ảnh</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($listcn as $row){?>
                    <tr class="w3-animate-left">
                        <td align="center">
                            <a class="btn btn-default" href="<?php echo base_url();?>index.php/admin/edit_cn"><em class="fa fa-pencil"></em></a>
                            <br>
                            <a class="btn btn-danger" href="<?php echo base_url() . "index.php/admin/delete_cn/" . $row['id_cn'];?>"><em class="fa fa-trash"></em></a>
                        </td>
                        <td><?php echo $row['id_cn'];?></td>
                        <td><?php echo $row['tieu_de_cn'];?></td>
                        <td><?php
                            echo substr($row['noi_dung_cn'],0,70) . "  ...";
                            ?></td>
                        <td><?php echo $row['link_cn'];?></td>
                    </tr>
                    <?php
                }
                ?>
                </tbody>
            </table>
        </div>
        <div class="list123">
            <?php echo $this->pagination->create_links();?>
        </div>
    </div>
</div>