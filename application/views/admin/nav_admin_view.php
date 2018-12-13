<header>
    <nav class="me-nav navbar navbar-light navbar-expand-md navigation-clean-button">
        <a class="navbar-brand" href="<?php echo base_url();?>index.php/admin">
            <span><img src="<?php echo base_url();?>assets/img/logo.png">Home Admin</span>
        </a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav">
                <li class="nav-item" role="presentation">
                    <a class="nav-link" href="<?php echo base_url();?>">Traveling</a>
                </li>
                <li class="dropdown" style="position: absolute; right: 5px;">
                    <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false">Xin Chào Admin</a>
                    <div class="dropdown-menu" role="menu">
                        <a class="dropdown-item" role="presentation"href="<?php echo base_url();?>index.php/admin">Thông tin cá nhân</a>
                        <a class="dropdown-item" role="presentation" href="<?php echo base_url();?>">Đăng xuất</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</header>