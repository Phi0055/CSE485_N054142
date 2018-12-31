<div class="container">
    <div class="row">
        <div class="col-md-6">
        <!--Phần BXH Du Lịch-->
            <div class="w3-white w3-margin">
                <div class="w3-container w3-padding">
                    <h4>Bảng Xếp Hạng Du Lịch</h4>
                </div>
                <ul class="w3-ul w3-hoverable w3-white">
                    <?php
                    $stt = 1;
                    foreach ($listdlbxhtop6 as $row){?>
                        <li class="w3-padding-16 w3-animate-zoom">
                            <img src="<?php echo base_url() . "assets/img/dddl/". $row['link_dddl']; ?>" alt="Jane" style="width:100%">
                            <div class="w3-container">
                                <a href="<?php echo base_url() . "index.php/du_lich/view_detail/" . $row['id_dddl'];?>">
                                    <p><h4><b>Top : <?php echo $stt++;?> </b> <?php echo $row['ten_dddl']?></h4></p>
                                </a>
                                <p><?php echo $row['tieu_de_dddl']?></p>
                            </div>
                        </li>
                    <?php }?>
                </ul>
                <hr>
                <a href="<?php echo base_url();?>index.php/du_lich/view_bxh">Xem Thêm</a>
            </div>
        </div>
        <div class="col-md-6">
            <!--Phần BXH Dịch Vụ-->
            <div class="w3-white w3-margin">
                <div class="w3-container w3-padding">
                    <h4>Bảng Xếp Hạng Dịch Vụ</h4>
                </div>
                <ul class="w3-ul w3-hoverable w3-white">
                    <?php
                    $stt = 1;
                    foreach ($listdvbxhtop6 as $row){?>
                        <li class="w3-padding-16 w3-animate-zoom">
                            <img src="<?php echo base_url() . "assets/img/dv/". $row['link_dv'];?>" alt="Jane" style="width:100%">
                            <div class="w3-container">
                                <a href="<?php echo base_url() . "index.php/dich_vu/view_detail/" . $row['id_dv'];?>">
                                    <p><h4><b>Top : <?php echo $stt++;?> </b> <?php echo $row['ten_dv']?></h4></p>
                                </a>
                                <p><?php echo $row['tieu_de_dv']?></p>
                            </div>
                        </li>
                    <?php }?>
                </ul>
                <hr>
                <a href="<?php echo base_url();?>index.php/dich_vu/view_bxh">Xem Thêm</a>
            </div>
        </div>
    </div>
</div>