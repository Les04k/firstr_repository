<?php
include 'temp/header.php';
include 'temp/dbconnect.php';
include 'temp/navbar.php';
?>

<div class="container">
    <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-6">
            <form action="" method="post">
                <div class="mb-3">
                    <label for="exampleInputLogin" class="form-label">Ваш Логин:</label>
                    <input type="text" name="loginn" class="form-control" id="exampleInputLogin" required>
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword" class="form-label">Пароль</label>
                    <input type="password" name="passw" class="form-control" id="exampleInputPassword" required>
                </div>
                <button type="submit" class="btn btn-primary">Войти</button>
            </form>
        </div>
        <div class="col-lg-3"></div>
    </div>
</div>

<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $loginn = $_POST['loginn'];
    $passw = $_POST['passw'];
    $sql = "SELECT * FROM userss WHERE login = '$loginn' LIMIT 1";
    $result = $mysqli->query($sql);

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        
     
        if ($passw == $user['password']) { 
          
            session_start();
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['user_login'] = $user['login'];
            $_SESSION['user_role'] = $user['role'];
            
         
            header("Location: profile.php");
            exit();
        } else {
            echo "<div class='alert alert-danger'>Неверный пароль!</div>";
        }
    } else {
        echo "<div class='alert alert-danger'>Пользователь не найден!</div>";
    }
}
?>

<?php
include 'temp/footer.php';
?>