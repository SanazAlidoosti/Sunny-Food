<?php
session_start();
unset($_SESSION['username']);
unset($_SESSION['password']);
unset($_SESSION['userid']);
 header("Location: index.php"); 
exit();
 ?>
