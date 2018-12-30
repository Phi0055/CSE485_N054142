<div class="article-list">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">Bảng Xếp Hạng Địa điểm Du Lịch</h2>
            <p class="text-center">Dựa trên sự đánh giá , bình chọn của khách hàng, traveling đưa ra danh sách những địa điểm và dịch vu được nhiều du khách yêu thích, lựa chọn và đánh giá cao . </p>
        </div>
        <div class="row articles">
            <?php
            foreach ($listdlbxh as $row){?>
                <div class="col-sm-6 col-md-4 item">
                    <a href="<?php echo base_url() . "index.php/du_lich/view_detail/" . $row['id_dddl'];?>">
                        <img class="img-fluid w3-animate-zoom w3-hover-opacity" src="<?php echo base_url() . "assets/img/dddl/". $row['link_dddl']; ?>">
                    </a>
                    <h3 class="name"><?php echo $row['ten_dddl'];?></h3>
                    <p class="description"><?php echo $row['tieu_de_dddl'];?></p>
                </div>
                <?php
            }
            ?>
        </div>
        <div class="list123">
            <?php echo $this->pagination->create_links();?>
        </div>
    </div>
</div>