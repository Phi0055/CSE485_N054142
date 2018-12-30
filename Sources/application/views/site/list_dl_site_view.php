<div class="article-list me-list-dl">
    <div class="container">
        <div class="intro">
            <a href="<?php echo base_url();?>index.php/du_lich"><h2 class="text-center">Du Lịch</h2></a>
            <p class="text-center">Du Lịch Theo Từng Chủ Đề!</p>
        </div>
        <div class="row articles">
            <div class="col-sm-6 col-md-3 item">
                <a href="<?php echo base_url();?>index.php/du_lich/view_bxh"><h4>Bảng Xếp Hạng Du Lịch</h4></a>
                <?php
                $stt = 1;
                foreach ($listdlbxhtop2 as $row){?>
                    <a href="<?php echo base_url() . "index.php/du_lich/view_detail/" . $row['id_dddl'];?>">
                        <img class="img-fluid w3-animate-zoom w3-hover-opacity" src="<?php echo base_url() . "assets/img/dddl/". $row['link_dddl']; ?>">
                    </a>
                    <h3 class="name">Top <?php echo $stt++;?></h3>
                <?php } ?>
            </div>
            <div class="col-sm-6 col-md-3 item">
                <a href="<?php echo base_url();?>index.php/du_lich/view_moi"><h4>Du Lịch Mới</h4></a>
                <?php foreach ($listdddltop2 as $row){?>
                    <a href="<?php echo base_url() . "index.php/du_lich/view_detail/" . $row['id_dddl'];?>">
                        <img class="img-fluid w3-animate-zoom w3-hover-opacity" src="<?php echo base_url() . "assets/img/dddl/". $row['link_dddl']; ?>">
                    </a>
                    <h3 class="name"><?php echo $row['ten_dddl'];?></h3>
                <?php } ?>
            </div>
            <div class="col-sm-6 col-md-3 item">
                <a href="<?php echo base_url();?>index.php/du_lich/view_trong_nuoc"><h4>Du Lịch Trong Nước</h4></a>
                <?php foreach ($listdltntop2 as $row){?>
                    <a href="<?php echo base_url() . "index.php/du_lich/view_detail/" . $row['id_dddl'];?>">
                        <img class="img-fluid w3-animate-zoom w3-hover-opacity" src="<?php echo base_url() . "assets/img/dddl/". $row['link_dddl']; ?>">
                    </a>
                    <h3 class="name"><?php echo $row['ten_dddl'];?></h3>
                <?php } ?>
            </div>
            <div class="col-sm-6 col-md-3 item">
                <a href="<?php echo base_url();?>index.php/du_lich/view_ngoai_nuoc"><h4>Du Lịch Ngoài Nước</h4></a>
                <?php foreach ($listdlnntop2 as $row){?>
                    <a href="<?php echo base_url() . "index.php/du_lich/view_detail/" . $row['id_dddl'];?>">
                        <img class="img-fluid w3-animate-zoom w3-hover-opacity" src="<?php echo base_url() . "assets/img/dddl/". $row['link_dddl']; ?>">
                    </a>
                    <h3 class="name"><?php echo $row['ten_dddl'];?></h3>
                <?php } ?>
            </div>
        </div>
    </div>
</div>