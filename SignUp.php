<?php
include "Classes/ClassUSER.php";
//required Fields
$usernameErr = '';
$emailErr = '';
$passwordErr = '';
$retypePasswordErr = '';
//validation of registration 
$passwordConfErr = '';
$registerConfirm = '';
$registerEmailErr = '';
$registerUsernameErr = '';

if (isset($_POST['submitNew'])) {
    if (empty($_POST['username'])) {
        $usernameErr = "required";
    }
    if (empty($_POST['email'])) {
        $emailErr = "required";
    }
    if (empty($_POST['password'])) {
        $passwordErr = "required";
    }
    if (empty($_POST['retypePassword'])) {
        $retypePasswordErr = "required";
    }
    if (!empty($_POST['username']) && !empty($_POST['email']) && !empty($_POST['password']) && !empty($_POST['retypePassword'])) {
        $email = $_POST['email'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $retypePassword = $_POST['retypePassword'];
        //Check if the password and its confirmation are the same
        if ($password != $retypePassword) {
            $passwordErr = "Error";
            $retypePasswordErr = "Error";
            $passwordConfErr = '<img src="images/No.png" width="25px" />';
            $passwordConfErr .= '  Error : Password inputs do not match !<br/><br/>';
        }
        //Send a query to database to check if the email exists 
        if (User::Email_Exists($email)) {
            $emailErr = "Error";
            $registerEmailErr = '<img src="images/No.png" width="25px" />';
            $registerEmailErr .= '  Error : Email Address already exist !<br/><br/>';
        }
        //Send a query to database to check if the username exists
        if (User::Username_Exists($username)) {
            $usernameErr = "Error";
            $registerUsernameErr = '<img src="images/No.png" width="25px" />';
            $registerUsernameErr .= '  Error : Username already exist !<br/><br/>';
        }
        if (!User::Email_Exists($email) && !User::Username_Exists($username) && ($password == $retypePassword)) {
            //Send a query to database to insert the data of the new member 
            //$result = insertUser($username, $password, $email); 
            $newUser = new User($username, $password, $email);
            $newUser->Save();
            $userid = User::User_getuserId($username);
            session_start();
            $_SESSION["userid"] = $userid;
            $_SESSION["username"] = $username;
            $_SESSION["password"] = $password;
            $_SESSION['email'] = $email;
            $_SESSION['userid'] = $userid;
            header("Location: index.php");
            exit();
            $registerConfirm = '<img src="images/Yes.png" width="25px" />';
            $registerConfirm .= "   Your account is successfully created ! Please, login on Sign-In page.<br/><br/><br/><br/>";
        }
    }
}
?>
<?php include "includes/header.php"; ?>
<body>
    <div  id="page" align="center">
        <div id="content" style="width:800px">
            <div id="contenttext">
                <div style="padding:10px">
                    <span class="titletext"><?php echo "Register as Member"; ?></span>
                </div>
                <br/>
                <br/>
                <br/>
                <div class="bodytext" align="left" style="width:800px">
                    <strong>
                        <div class="col-xs-6" >
                            <font color=#CC0000><?php echo $registerUsernameErr; ?></font>
                            <font color=#CC0000><?php echo $registerEmailErr; ?></font>
                            <font color=#CC0000><?php echo $passwordConfErr; ?></font> 
                            <font color=#006600><?php echo $registerConfirm; ?></font>
                            <br/>
                            <big><font color=#CC0000>* required field.<?php //$ts = isset($_SESSION['userid']) ? $_SESSION['userid'] : "";var_dump($ts)    ?></big></font>
                            <br/>
                            <form action="#" method="post">
                                <div class="form-group">
                                    <br/>
                                    Username:<font color=#CC0000> * <?php echo $usernameErr; ?></font><input type="text" name = "username" class="form-control">
                                    <br/>
                                    Email Address:<font color=#CC0000> * <?php echo $emailErr; ?></font><input type="email" name = "email" class="form-control">
                                    <br/>
                                    Password:<font color=#CC0000> * <?php echo $passwordErr; ?></font><input type="password" name = "password" class="form-control">
                                    <br/>
                                    Re-type Password:<font color=#CC0000> * <?php echo $retypePasswordErr; ?></font><input type="password" name = "retypePassword"  class="form-control">
                                    <br/>
                                    <input class = "btn btn-primary" type="submit" name="submitNew" value='Register'> 
                                    <br/>
                                </div>
                            </form>
                        </div>
                    </strong>
                </div>
            </div>
        </div>
    </div>
</body>
</html>