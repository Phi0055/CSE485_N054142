<header>
    <nav class="me-nav navbar navbar-light navbar-expand-md navigation-clean-button">
        <div class="container">
            <a class="navbar-brand" href="<?php echo base_url();?>">
                <span><img src="<?php echo base_url();?>assets/img/logo.png">Traveling </span>
            </a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav nav-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#">Du Lịch</a>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" role="presentation" id="du_lich_bxh" href="<?php echo base_url();?>index.php/du_lich/view_bxh">Bảng Xếp Hạng</a>
                            <a class="dropdown-item" role="presentation" id="du_lich_moi" href="<?php echo base_url();?>index.php/du_lich/view_moi">Mới</a>
                            <a class="dropdown-item" role="presentation" id="du_lich_trong_nuoc" href="<?php echo base_url();?>index.php/du_lich/view_trong_nuoc">Trong Nước</a>
                            <a class="dropdown-item" role="presentation" id="du_lich_ngoai_nuoc" href="<?php echo base_url();?>index.php/du_lich/view_ngoai_nuoc">Ngoài Nước</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false">Dịch Vụ</a>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" role="presentation">Phương Tiện</a>
                            <a class="dropdown-item" role="presentation">Khách Sạn</a>
                        </div>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link">Bảng Xếp Hạng</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" href="<?php echo base_url();?>index.php/cam_nang">Cẩm Nang</a>
                    </li>
                </ul>
                <p class="ml-auto navbar-text actions">
                    <a class="btn btn-light" role="button" id="btnDangNhap"><i class="fa fa-user"></i>Đăng Nhập</a>
                    <a class="btn btn-light" role="button" href="<?php echo base_url();?>index.php/regist"><i class="fa fa-sign-in"></i>Đăng Ký</a>
                </p>
            </div>
        </div>
    </nav>
</header>