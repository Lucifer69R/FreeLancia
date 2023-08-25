<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $password_regex='/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\!\~\@\#\$\%\&\-\_])[A-Za-z\d\!\~\@\#\$\%\&\-\_]{8,}$/';
        if(isset($_POST['password'])){
        $pass=$_POST['password'];
        }
        $bool=preg_match($password_regex,$pass);
            if($bool==1){
                header('Location:mainpage.php');
            }
            elseif(strlen($pass)==0){
                echo "please enter a valid password!!";
            }
            elseif(strlen($pass)<8){
                echo "minimum size of password is 8 ";
            }
            
            elseif($bool==0)
            {
                echo "your password must be contain a Uppercase, a number and a special character";
            }
    ?>
    <form action="" method="post">
        Enter password : <input type="text" name="password">
        <button type="submit">log in</button>

    </form>
</body>
</html>