<?php
    require_once 'functions.php';
    $idHH = $_GET['idHH'];
    settype($idHH, "int");
    xoaTheLoai($idHH);
    header("location:index.php?page=hanghoa_ds"); //chuyển về trang danh sách record
?>
