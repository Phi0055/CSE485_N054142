<div class="me-dvpt container article-list me-top3">
    <div class="intro">
        <h2 class="text-center">Dịch Vụ Khách Sạn</h2>
        <p class="text-center">Những dịch vụ trong khách sạn được mở ra nhằm mục đích mang đến sự hài lòng, tiện lợi cho khách hàng. Ở một số khách sạn lớn và nổi tiếng trên thế giới, còn có thêm những dịch vụ độc đáo, mới lạ và có một không hai. Nếu sắp có chuyến đi du lịch, đừng ngại hỏi về các dịch vụ này nhé !</p>
    </div>
    <div class="row">
        <?php
        foreach ($listdvkstop3 as $row){?>
            <div class="col-4 py-3 mx-auto col-xl-4 col-lg-6 col-md-6 col-sm-10" style="min-width:280px;min-height:280px;">
                <div class="card" style="width:100%;height:100%;">
                    <img class="img-fluid card-img-top w3-animate-zoom" src="<?php echo base_url() . "assets/img/dv/". $row['link_dv']; ?>" style="height:200px;">
                    <div class="card-body" style="background-color: aliceblue">
                        <h5><?php echo $row['ten_dv']?></h5>
                        <p><?php echo $row['tieu_de_dv']?></p>
                    </div>
                    <div class="card-footer text-center w3-animate-top"><small>
                            <a href="<?php echo base_url(). "index.php/dich_vu/view_detail/" . $row['id_dv'];?>"><i class="fa fa-eye pr-1"></i>Visit<br></a>
                        </small></div>
                </div>
            </div>
            <?php
        }
        ?>
        <div id="top3show"><a href="<?php echo base_url();?>index.php/dich_vu/view_ks">Xem thêm</a></div>
    </div>
</div>