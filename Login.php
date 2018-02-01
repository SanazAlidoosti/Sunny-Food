<?php include "includes/header.php"?>
<body><?php include "Classes/ClassUSER.php"?>
	<div id="page" align="center">
		<div id="content" style="width:800px">
			
			<div id="contenttext">
				<span class="titletext"><?php echo "Login In"; ?></span>
				
				<div class="bodytext" align="left" align="justify">
				<?php
				$usernameErr = '';
				$passwordErr = '';
				$loginErr = '';
				$loginConfirm = '';
	
					if(isset($_POST['Login'])){
						
						if (empty($_POST['username'])) {
							$usernameErr = "required";
						} 
						if (empty($_POST['password'])) {
							$passwordErr = "required";
						}    
						if(!empty($_POST['username']) && !empty($_POST['password']))
						{
							$username = $_POST['username'];
							$password = $_POST['password'];
							//Send a query to database to check the username and password
										
							//$result = Read_User($username , $password);
							$result = User::User_Exists($username, $password);
                                                        //var_dump($result);
							 if(!$result){
								$usernameErr = "Error";
								$passwordErr = "Error";
								$loginErr = '<img src="./images/No.png" width="25px" />';
								$loginErr .= '<strong>   Error : Username and Password combination is incorrect !</strong><br/><br/><br/><br/>';
							}else{
								$loginConfirm = '<img src="images/Yes.png" width="25px" />';
								$loginConfirm .= "<strong>   Your Login is Successfull ! </strong><br/><br/><br/><br/>";
                                                                $useid=User::User_getuserId($username);
                                                                if(!isset($_SESSION)){
                                                                  session_start();  
                                                                }                                                              
                                                                 $_SESSION["username"] = $username;
                                                                 $_SESSION["password"] = $password;
                                                                 $_SESSION["userid"] = $useid;
                                                                 header("Location: index.php"); 
                                                                 exit();
                                                                
							}
						}
					}
				?>
				<div class="col-sm-6" >
						   <font color=#CC0000><?php echo $loginErr; ?></font> 
						   <font color=#006600><?php echo $loginConfirm; ?></font> 
		  
							<strong><font color=#CC0000>* required field.</strong></font>
							<br/>
							<form action="#" method="post">
							<div class="form-group">
							<br/>
							<strong>Username :</strong><font color=#CC0000> * <?php echo $usernameErr;?></font><input type="text" name = "username" class="form-control"><br/>
							<strong>Password :</strong><font color=#CC0000> * <?php echo $passwordErr;?></font><input type="password" name = "password" class="form-control">
							<br/> 
							<input class = "btn btn-primary" type="submit" name="Login" value='Log In'> 
                                                        <a href="forgotPwd.php">Forgot your password?</a>
							<br/><br/>
                                                        <a href="SignUp.php">You are NOT member?</a>
                                                        <br/>

                                                        
							</div>
							</form>
					
				</div>
				
				
					
				</div>
			</div>
			
		</div>
	</div>
</body>

</html>
