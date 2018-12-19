<div class="article-list me-top3">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">Địa điểm Du Lịch Mới</h2>
            <p class="text-center">Traveling mang đến du khách các sản phẩm và điểm đến mới của du lịch Việt Nam cũng như quốc tế; đồng thời mong muốn Chính phủ Việt Nam nới lỏng hơn nữa các thủ tục nhập cảnh cho khách du lịch quốc tế, đặc biệt khách đến từ các thị trường Tây Âu như Anh, Pháp và Đức</p>
        </div>
        <div class="row articles">
            <?php
            foreach ($listdddltop3 as $row){?>
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid w3-animate-zoom w3-hover-opacity" src="<?php echo base_url() . "assets/img/dddl/". $row['link_dddl'] . ".jpg"; ?>"></a>
                    <h3 class="name"><?php echo $row['ten_dddl'];?></h3>
                    <p class="description"><?php echo $row['tieu_de_dddl'];?></p>
                </div>
                <?php
            }
            ?>
            <div id="top3show"><a href="<?php echo base_url();?>index.php/du_lich/view_moi">Xem thêm</a></div>
        </div>
    </div>
</div>