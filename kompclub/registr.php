<?php
include 'temp/header.php';
include 'temp/dbconnect.php';
include 'temp/navbar.php';
?>

    <div class="container">
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <form action="login.php" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Ваше ФИО:</label>
    <input type="text" name="fio" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Ваш e-mail:</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Ваш Логин:</label>
    <input type="text" name="loginn" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Пароль</label>
    <input type="password" name="passw" class="form-control" id="exampleInputPassword1">
  </div>
  <button type="submit" class="btn btn-primary">Отправить</button>
</form>
            </div>
            
<div class="col-lg-4"></div>
            </div>
        </div>
    <?php
    $fio = $_POST['fio'];
    $email = $_POST['email'];
    $loginn = $_POST['loginn'];
    $passw = $_POST['passw'];
        $sql = ("INSERT INTO userss ( `fio`, `e-mail`, `login`, `password`, `avatar`, `role`) VALUES ('$fio', '$email', '$loginn', '$passw', '', 'user')");
        $result = $mysqli->query($sql);
        var_dump($sql);
    ?>


<?php
include 'temp/footer.php'
?>