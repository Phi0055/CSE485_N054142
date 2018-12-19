<div class="article-list me-top3">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">Địa điểm Du Lịch Ngoài Nước</h2>
            <p class="text-center">xxx</p>
        </div>
        <div class="row articles">
            <?php
            foreach ($listdlnntop3 as $row){?>
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid w3-animate-zoom" src="<?php echo base_url() . "assets/img/dddl/". $row['link_dddl'] . ".jpg"; ?>"></a>
                    <h3 class="name"><?php echo $row['ten_dddl'];?></h3>
                    <p class="description"><?php echo $row['tieu_de_dddl'];?></p>
                </div>
                <?php
            }
            ?>
            <div id="top3show"><a href="<?php echo base_url();?>index.php/du_lich/view_ngoai_nuoc">Xem thêm</a></div>
        </div>
    </div>
</div>