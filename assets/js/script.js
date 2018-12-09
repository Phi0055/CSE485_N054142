$(document).ready(function () {

    //Ẩn form login khi load
    $(".me-form-login").hide();
    //Click nút đăng nhập trên nav
    $("#btnDangNhap").click(function () {
        $(".me-form-login").toggle();
    });

    //Kiểm tra đăng nhập
    $("#Login").click(function () {
        //Nếu False
        var TKadmin = "admin";
        var MKadmin = "admin";

        

        var lc = confirm("Nhập sai tài khoản hoặc mật khẩu! Bạn muốn thử lại không?");
        if (lc === false){
            $(".me-form-login").hide();
        }
        //Nếu True
    });
    
    //Click Chat
    $(".me-open-button").click(function () {
        $("#myForm").show();
        $(this).hide();
    });
    $("#myForm .cancel").click(function () {
        $("#myForm").hide();
        $(".me-open-button").show();
    });

});
