<?php 
   	include "Classes/ClassUSER.php";
	
    //$usernameErr= '';
    $emailErr = '';
    $passwordErr = '';
    $retypePasswordErr = '';
	
	$changeConfirm = '';
	//$UsernameNotFound = '';
	$EmailNotFound = '';
	$changePasswordErr = '';
    $UsernameEmailNotFound = '';
	
if(isset($_POST['submitChange'])){
    //if (empty($_POST['username'])) {
		//$usernameErr = "required";   
	//} 
    if (empty($_POST['email'])) {
		$emailErr = "required";   
	} 
    if (empty($_POST['password'])) {
		$passwordErr = "required";  
	}
    if (empty($_POST['retypePassword'])) {
		$retypePasswordErr = "required";  
	}  
    
	if(//!empty($_POST['username'])&& 
        !empty($_POST['email'])&& 
	   !empty($_POST['password'])&& !empty($_POST['retypePassword']))
    {
            if(isset($_SESSION['username'])){
               $username = $_SESSION['username']; 
            } else {
                session_start();    
                $username = $_SESSION['username'];       
            }

        $email = $_POST['email'];
        $password = $_POST['password'];
        $retypePassword = $_POST['retypePassword'];
		
        //Check if the password and its confirmation are the same
        if($password != $retypePassword){
			$passwordErr =  "Error"; 
            $retypePasswordErr =  "Error"; 
            $changePasswordErr = '<img src="images/No.png" width="25px" />';
            $changePasswordErr .= '  Error : Password inputs do not match !<br/><br/>';
        } 
		//Send a query to database to check if the email exists 
		if(!USER::Username_Email_Exists($username,$email)){
			
            $UsernameEmailNotFound  = '<img src="images/No.png" width="25px" />';
            $UsernameEmailNotFound  .= '  Error : Username and Email Combination does not exist !<br/><br/>';
        
			if(!USER::Email_Exists($email)){
				$emailErr = "Error"; 
				$EmailNotFound = '<img src="images/No.png" width="25px" />';
				$EmailNotFound .= '  Error : Email Address does not exist !<br/><br/>';
			}
			//Send a query to database to check if the username exists
			/*if(!USER::Username_Exists($_SESSION['username'])){
				$usernameErr = "Error";   
				$UsernameNotFound = '<img src="images/No.png" width="25px" />';
				$UsernameNotFound .= '  Error : Username does not exist !<br/><br/>';
			} */
		}
        
		if(USER::Username_Email_Exists($username, $email) && ($password == $retypePassword)){
			//Send a query to database to update the password 
			$id = USER::get_UserID($username,$email);
			$user = new USER($username, $password, $email, $id);
			$result = $user->update_password();
			
			if($result ){
				$changeConfirm = '<img src="images/Yes.png" width="25px" />';
				$changeConfirm .= "   Your password is successfully changed ! Please, login on Sign-In page.<br/><br/><br/><br/>";
			}
        }

        
    }		
}


?>
  
<?php include "includes/header.php"; ?>
    
<body>
<div  id="page" align="center">
<div id="content" style="width:800px">
<div id="contenttext">
    <br/>
    <br/>
    <br/>
	<div class="bodytext" align="left" style="width:800px">
       <strong>
       <div class="col-xs-6" >
          <font color=#CC0000><?php //echo $UsernameNotFound; ?></font> 
          <font color=#CC0000><?php echo $EmailNotFound; ?></font>
          <font color=#CC0000><?php echo $UsernameEmailNotFound; ?></font>
          <font color=#CC0000><?php echo $changePasswordErr; ?></font> 
          <font color=#006600><?php echo $changeConfirm; ?></font>
          
           <big><font color=#CC0000>* required field.</big></font>
           <br/>
           <form action="#" method="post">
              <div class="form-group">
                <br/>
                Username :<?php echo"&nbsp&nbsp&nbsp". $_SESSION['username']?><br/>
                    Email :<font color=#CC0000> * <?php echo $emailErr;?></font><input type="text" name = "email" class="form-control"><br/>
                    New Password:<font color=#CC0000> * <?php echo $passwordErr;?></font><input type="password" name = "password" class="form-control">
                    Re-type Password:<font color=#CC0000> * <?php echo $retypePasswordErr;?></font><input type="password" name = "retypePassword" class="form-control">
                <br/>               
                <input class = "btn btn-primary" type="submit" name="submitChange" value='Change Password'> 
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