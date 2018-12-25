<div class="article-list me-list-dl">
    <div class="container">
        <div class="intro">
            <a href="<?php echo base_url();?>index.php/du_lich"><h2 class="text-center">Du Lịch</h2></a>
            <p class="text-center">Du Lịch Theo Từng Chủ Đề!</p>
        </div>
        <div class="row articles">
            <div class="col-sm-6 col-md-4 item">
                <h4>Bảng Xếp Hạng</h4>
                <a href="#"><img class="img-fluid w3-animate-zoom w3-hover-opacity" src="<?php echo base_url(); ?>assets/img/desk.jpg"></a>
                <h3 class="name">Top 1</h3>
                <a href="#"><img class="img-fluid w3-animate-zoom w3-hover-opacity" src="<?php echo base_url(); ?>assets/img/desk.jpg"></a>
                <h3 class="name">Top 2</h3>
                <a href="<?php echo base_url();?>index.php/du_lich/view_bxh" class="action"><i class="fa fa-arrow-circle-right"></i></a>
            </div>
            <div class="col-sm-6 col-md-4 item">
                <h4>Du Lịch Mới</h4>
                <?php foreach ($listdddltop2 as $row){?>
                    <a href="<?php echo base_url() . "index.php/du_lich/view_detail/" . $row['id_dddl'];?>">
                        <img class="img-fluid w3-animate-zoom w3-hover-opacity" src="<?php echo base_url() . "assets/img/dddl/". $row['link_dddl']; ?>">
                    </a>
                    <h3 class="name"><?php echo $row['ten_dddl'];?></h3>
                <?php } ?>
                <a href="<?php echo base_url();?>index.php/du_lich/view_moi" class="action"><i class="fa fa-arrow-circle-right"></i></a>
            </div>
            <div class="col-sm-6 col-md-4 item">
                <h4>Du Lịch Trong Nước</h4>
                <?php foreach ($listdltntop2 as $row){?>
                    <a href="<?php echo base_url() . "index.php/du_lich/view_detail/" . $row['id_dddl'];?>">
                        <img class="img-fluid w3-animate-zoom w3-hover-opacity" src="<?php echo base_url() . "assets/img/dddl/". $row['link_dddl']; ?>">
                    </a>
                    <h3 class="name"><?php echo $row['ten_dddl'];?></h3>
                <?php } ?>
                <a href="<?php echo base_url();?>index.php/du_lich/view_trong_nuoc" class="action"><i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
    </div>
</div>