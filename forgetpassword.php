
<?php  include('config.php'); ?>
<?php  include('includes/head_section.php'); ?>
<?php

	$none="";
	$non="";
	if (isset($_POST['submit'])) {
		
		
		$username = mysqli_real_escape_string($conn, $_POST['username']);
		$password = mysqli_real_escape_string($conn, $_POST['pass']);

		
		$query = "SELECT id FROM users WHERE username='$username'";	

		if ($query_run = mysqli_query($conn, $query)) {
			$query_num_rows = mysqli_num_rows($query_run);
			if ($query_num_rows==0) {
				$non = "<div class='alert alert-danger alert-dismissible fade show'>
						<button type='button' class='close' data-dismiss='alert'>&times;</button>
						<strong>Username does not exist!!</strong>
					</div>";
			}else{
				$Update= "UPDATE `users` SET `password`='$password' WHERE `username`='$username'";
				$Update_query = mysqli_query($conn, $Update);
				if ($Update_query) {
					echo "<script>alert ('Congrats, Password Changed!!')</script>";
					echo "<script>window.open('index.php','_self')</script>";
				}else{

				}
			}
		}else {
			echo "<script>window.open('forgetpassword.php','_self')</script>";
		}
		

	}
?>
	<title>LifeBlog | Forgot Password</title>
</head>
<body>
	<div class="container">
		<!-- Navbar -->
		<?php include( ROOT_PATH . '/includes/navbar.php'); ?>
		<!-- // Navbar -->
		<div class="main text-white text-center" style="height: 100%; width: 100%; ">
			<div class="row">
				<div class="color text-center" style="height: 600px; width: 100%;">
					<form action="forgetpassword.php" method="POST">
						<table style="color:white;width:100%;font-style:'Dosis-Regular.ttf'; padding: 0;text-align: center;" >
							<tr style="color:white;">
								<td><div class="cols"><h1>Change Your Password!!</h1></div></td>
							</tr>
							<tr>

								<td><input type="text" id="email" placeholder="YOUR USERNAME" name="username" style="color: white;border: 1px solid grey;width: 50%;outline: none;background: none;padding: 0 5px;height: 40px;margin-bottom: 10px;" required></td>
							</tr>
							<tr>

								<td><input type="password" placeholder="NEW PASSWORD" name="pass" style="font-size: 15px;color: white;border: 1px solid grey;width: 50%;outline: none;background: none;padding: 0 5px;height: 40px;margin-bottom: 10px;" required></td>
							</tr>
							
							<tr align="center">
							<td colspan="3"><input type="submit" name="submit" value="Update Password" class="btn" style=" display: block;width: 20%;height: 40px;border: 3px solid white;background:  linear-gradient(120deg, blue, black);background-size: 200%;margin-bottom: 10px;color: #fff;outline: none;cursor: pointer;transition: 0.5s;"></td>
							</tr><?php echo $none; ?><?php echo $non; ?>
							<tr>
								<td style="height: 50px;"><div class="ball"></div></td>
							</tr>
						</table>						
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- // container -->

	<!-- Footer -->
		<?php include( ROOT_PATH . '/includes/footer.php'); ?>
	<!-- // Footer -->	
</body>
</html>