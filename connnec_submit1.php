<?php
try {
    $connect = new PDO("mysql:host=localhost;dbname=product_review_db", "root", "");
    $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo "Lỗi kết nối: " . $e->getMessage();
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Nhận dữ liệu từ form
    $user_name = $_POST["user_name1"];
    $email = $_POST["email1"];
    $user_review = $_POST["user_review1"];

    // Kiểm tra và validate dữ liệu
    if (empty($user_name) || empty($email) || empty($user_review)) {
        echo "Please complete all information.";
        exit();
    }

    try {
        $data = array(
            ':user_name'    =>  $user_name,
            ':email'        =>  $email,
            ':user_review'  =>  $user_review,
            ':datetime'     =>  date('Y-m-d H:i:s') // Chuyển đổi timestamp thành ngày giờ chuẩn của MySQL
        );

        $query = "
        INSERT INTO review_table 
        (user_name, email, user_review, datetime) 
        VALUES (:user_name, :email, :user_review, :datetime)
        ";

        $statement = $connect->prepare($query);
        $statement->execute($data);

        echo "Your review has been submitted successfully.";
    } catch(PDOException $e) {
        echo "Lỗi: " . $e->getMessage();
    }
}
?>
