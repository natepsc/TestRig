<?php
	include("trconfig.php"); //holds globals for DB access
	session_start();

	//GLOBAL VARIABLE DECLARATIONS

	$inputs = array(
		"trUsername" => "",
		"trPassword" => "");

	$inputErrors = array(
		"trUsername" => "",
		"trPassword" => "");

	//END VARIABLE DECLARATIONS


	//Server input scrubber
	function scrubInput($data)
	 {
    		$data = trim($data);
    		$data = stripslashes($data);
    		$data = htmlspecialchars($data);
    		return $data;
	 }

	//Has the user supplied their username and password?
	if (!empty($_SESSION["username"]))
	{
		print 'You are already logged in, ' . $_SESSION["username"];
	}
	else if ($_SERVER["REQUEST_METHOD"] == "POST")
    	 {
		$errFlag = 0;
		if (empty($_REQUEST["trUsername"]))
		 {
			$inputErrors["trUsername"] = "You must provide a username";
			$errFlag = 1;
	 	 }

		if (empty($_REQUEST["trPassword"]))
         	 {
                	$inputErrors["trPassword"] = "Please supply your password";
                	$errFlag = 1;
         	 }

		if ($errFlag != 1)
	 	 {
			$inputs["trUsername"] = scrubInput($_REQUEST["trUsername"]);
			$inputs["trPassword"] = scrubInput($_REQUEST["trPassword"]);

			logIn($inputs["trUsername"],$inputs["trPassword"]);

	 	 }

	 }//END AJAX processing



	function logIn($username, $password)
	{
		//Create our Database Handler, $dbh
		$DB_HOST = "192.168.122.1"; //ionia's private IP
		$DB_USERNAME = "testrig";
		$DB_PASSWORD = "tinycats";
		$DB_NAME = "testrig";
		$dbh = new PDO("mysql:host=$DB_HOST;dbname=$DB_NAME", $DB_USERNAME, $DB_PASSWORD);


		$stmnt = $dbh->prepare('SELECT tr_username, tr_password 
					FROM customer 
					WHERE tr_username = :username');
		$stmnt->bindParam(':username', $username, PDO::PARAM_STR);
		$stmnt->execute();
		$queryResult = $stmnt->fetch(PDO::FETCH_ASSOC); //returns FALSE if empty result
		if (!$queryResult) //Did we find a match to the submitted username?
		 {
			print "username not found";
		 }
		else //found a username match, time to see if the password is correct
		 {
			print $queryResult["tr_username"]. "<br>";
			if (!password_verify($password, $queryResult["tr_password"]))
			 {
				print "given password and DB password do not match";
			 }
			else
			 {
				$_SESSION["username"] = $username;
				print "You have now logged in";
			 }
		 }


	}//END logIn


	function buildLoginForm()
	{



	}
?>


<html>


<body>


	<div name="loginSection" id="loginSection">

		<form id="loginForm" name="loginForm" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">

			Username:<input type="text" id="trUsername" name="trUsername"> <?php print $inputErrors["trUsername"]; ?> <br>
			Password:<input type="password" id="trPassword" name="trPassword"> <?php print $inputErrors["trPassword"]; ?> <br>
			<input type="submit" value="Submit">

		</form>


	</div>

	<input type="button" value="Log Out" onclick="window.location.href = 'http://testrig.psc.edu/logout.php';">

</body>


</html>
