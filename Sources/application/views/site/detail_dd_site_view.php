<div class="me-detail">
    <div class="container">
        <div class="photo-card container">
            <div class="photo-background w3-animate-zoom" style="background-image:url(<?php echo base_url() . "assets/img/dd/" . $dd['link_dd'];?>)"></div>
            <div class="photo-details w3-animate-top">
                <h1><?php echo $dd['ten_dd'];?><br></h1>
                <p>
                    <strong>
                        <?php echo $dd['tieu_de_dd'];?>
                    </strong>
                    <br>
                    <?php echo $dd['noi_dung_dd'];?>
                    <br>
                </p>
                <p class="copyright">
                    <i class="fa fa-star-o"></i>
                    <i class="fa fa-star-o"></i>
                    <i class="fa fa-star-o"></i>
                    <i class="fa fa-star-o"></i>
                    <?php echo $star;?>/5 trong <?php echo $counts['counts'];?> đánh giá
                </p>
                <button class="btn btn-primary" type="button">Gửi đánh giá của bạn</button>
            </div>
        </div>

        <div class="me-cmt">
            <h1>Đánh giá du lịch</h1>
            <div class="card">
                <div class="card-header">
                    <h6 class="mb-0">Phản hồi của du khách</h6>
                </div>
                <div class="card-body">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <?php foreach ($comments as $row){ ?>
                            <p><img src="<?php echo base_url();?>assets/img/user-photo4.jpg" width="20px" height="20px">
                                <b><?php echo $row['ho_ten'];?></b> : <?php echo $row['binh_luan_dd'];?></p>
                            <?php } ?>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <br>

        <div>
            <textarea name="" id="" cols="70" rows="3"></textarea>
            <br>
            <br>
            <button class="btn btn-primary" type="button">Bình Luận</button>
        </div>

        <div class="more-projects">
            <h3 class="text-center">Nhiều hơn</h3>
            <div class="row gallery">
                <?php foreach ($listddtop4 as $row){ ?>
                    <div class="col-md-4 col-lg-3">
                        <div class="item">
                            <a href="<?php echo base_url() . "index.php/dia_diem/view_detail/" . $row['id_dd'];?>">
                                <img style="width: 100%; height: 180px" class="img-fluid scale-on-hover" src="<?php echo base_url();?>assets/img/dd/<?php echo $row['link_dd'];?>">
                                <p><?php echo $row['ten_dd'];?></p>
                            </a>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>