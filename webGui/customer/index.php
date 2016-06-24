<html>

<head>
<title> PHP Form Process </title>
</head>

<body>
<?php
//init variables for form validation
//required variables
$inputs = array(
	fName => "",
	lName => "",
	email => "",
	testRigUsername => "",
	testRigPassword => "",
	phoneNumber => "",
	instName => "",
	scpPubKey => "",
	scpDstIp => "",
	scpUsername => "",
	rtEmailAddress => "");

$fNameError = $lNameError = $emailError = $phoneNumberError = $instNameError = $scpPubKeyError = $scpDstIpError = $scpUsernameError = $rtEmailAddress = $testRigUsernameError = $testRigPasswordError = $testRigPasswordConfirmError = "";

//database-related variables
$dbHost = "192.168.122.1"; //ionia's private IP
$username = "testrig";
$password = "tinycats";
$dbname = "testrig";

//input scrubber
 function scrubInput($data)
  {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }

 //function for inserting values into the database
 function insertIntoDB($cleanedInputs)
  {
	//database-related variables
	$dbHost = "192.168.122.1"; //ionia's private IP
	$username = "testrig";
	$password = "tinycats";
	$dbname = "testrig";
    	//this function is basically a giant try/catch
     	try {
	   	$dbLink = new PDO("mysql:host=$dbHost;dbname=$dbname", $username, $password);
	   	//error mode for PDO is exception
	   	$dbLink->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	   	$statement = $dbLink->prepare("INSERT INTO customer (inst_name, contact_fname, contact_lname, contact_phone, contact_email, tr_username, tr_password, inst_pub_key, inst_data_host, inst_host_uname, tt_system)
		VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		$statement->execute(array($cleanedInputs["instName"], $cleanedInputs["fName"], $cleanedInputs["lName"], $cleanedInputs["phoneNumber"], $cleanedInputs["email"],$cleanedInputs["testRigUsername"], $cleanedInputs["testRigPassword"], $cleanedInputs["scpPubKey"], $cleanedInputs["scpDstIp"], $cleanedInputs["scpUsername"], $cleanedInputs["rtEmailAddress"]));
	     }
     	catch(PDOException $e) {

	   	echo "<h1> Oops! Something went wrong while interacting with the database:</h1> <br>" . $e->getMessage();
	     }
      	$dbLink = null;
   }

//check if required variables are empty. Empty? Alert user. Provided? Pass to input scrubber

if ($_SERVER["REQUEST_METHOD"] == "POST")
{
 if (empty($_POST["fName"]))
  {
         $fNameError = "You must provide your first name";
  }

 if (empty($_POST["lName"]))
  {
         $lNameError = "You must provide your last name";
  }

 if (empty($_POST["email"]))
  {
        $emailError = "You must provide your email address";
  }

 if (empty($_POST["phoneNumber"]))
  {
	$phoneNumberError = "You must provide a phone number";
  }

 if (empty($_POST["instName"]))
  {
        $instNameError = "You must provide your institution's name";
  }

 if (empty($_POST["scpUsername"]))
  {
        $scpUsernameError = "You must provide an SFTP-only account username";
  }

 if (empty($_POST["scpDstIp"]))
  {
        $scpDstIpError = "You must provide the IP of transfer host";
  }

 if (empty($_POST["scpPubKey"]))
  {
        $scpPubKeyError = "You must provide a public SCP key";
  }

 if (empty($_POST["testRigUsername"]))
  {
	$testRigUsernameError = "You must choose a username";
  }

 if (empty($_POST["testRigPassword"]))
  {
	$testRigPasswordError = "You must provide a password";
  }

 if ($_POST["testRigPassword"] != $_POST["testRigPasswordConfirm"])
  {
	$testRigPasswordConfirmError = "passwords do not match";
  }

  if (($fNameError == "") && ($lNameError == "") && ($emailError == "") && ($phoneNumberError == "") && ($instNameError == "") && ($scpUsernameError == "") && ($scpDstIpError == "") && ($scpPubKeyError == "") && ($testRigUsernameError == "") && ($testRigPasswordError == "") && ($testRigPasswordConfirmError == ""))
  {
	$inputs["fName"] = scrubInput($_POST["fName"]);
	$inputs["lName"] = scrubInput($_POST["lName"]);
	$inputs["email"] = scrubInput($_POST["email"]);
	$inputs["testRigUsername"] = scrubInput($_POST["testRigUsername"]);
	$inputs["phoneNumber"] = scrubInput($_POST["phoneNumber"]);
	$inputs["instName"] = scrubInput($_POST["instName"]);
	$inputs["scpUsername"] = scrubInput($_POST["scpUsername"]);
	$inputs["scpDstIp"] = scrubInput($_POST["scpDstIp"]);
	$inputs["scpPubKey"] = scrubInput($_POST["scpPubKey"]);
	$inputs["rtEmailAddress"] = scrubInput($_POST["rtEmailAddress"]);
	//hash the password
	$inputs["testRigPassword"] =  password_hash($_POST["testRigPassword"], PASSWORD_BCRYPT);
	//echo "You entered:<hr>First Name:  ".$inputs["fName"]. "<br>Last Name:  " . $inputs["lName"]. "<br>Email:  " . $inputs["email"] . "<br>Phone:  " . $inputs["phoneNumber"] . "<br>Institution:  " . $inputs["instName"] . "<br>SCP Username:  " .$inputs["scpUsername"]. "<br>Dst IP:  " .$inputs["scpDstIp"]. "<br>Key:  " . $inputs["scpPubKey"] . "<br>" . "Password: " . $inputs["testRigPassword"] . "<br>";


	//insert this shit into the DB
	insertIntoDB($inputs);

  }

}
//end PHP input validation
?>


<div id="inputSection" name="inputSection">
<form id="contactInformation" name="contactInformation" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
    <fieldset>
    <legend>Contact Information</legend>
    * required fields <br>
    First Name*: <input type="text" name="fName" id="fName"> <?php echo $fNameError ?><br>
    Last Name*: <input type="text" name="lName" id="lName"> <?php echo $lNameError ?><br>
    Email*: <input type="text" name="email"> <?php echo $emailError ?> <br>
    TestRig Username: <input type="text" name="testRigUsername" id="testRigUsername"> <?php echo $testRigUsernameError ?><br>
    TestRig Password: <input type="password" name="testRigPassword" id="testRigPassword"> <?php echo $testRigPasswordError ?><br>
    repeat password:  <input type="password" name="testRigPasswordConfirm" id="testRigPasswordConfirm"> <?php echo $testRigPasswordConfirmError ?><br>
    Phone Number*: <input type="text" name="phoneNumber" id="phoneNumber"> <?php echo $phoneNumberError ?> <br>
    Institution Name*: <input type="text" name="instName" id="instName"> <?php echo $instNameError ?><br>
    RT Email Address: <input type="text" name="rtEmailAddress" id="rtEmailAddress"> <br>
    SCP Username: <input type="text" name="scpUsername" id="scpUsername"> <?php echo $scpUsernameError ?><br>
    SCP Dst IP: <input type="text" name="scpDstIp" id="scpDstIp"> <?php echo $scpDstIpError ?><br>
    SCP Public Key*: <input type="textarea" name="scpPubKey" id="scpPubKey"> <?php echo $scpPubKeyError ?> <br>
    <br> <input type="submit" value="Submit">
    </fieldset>
</form>
</div>
<div id="outputSection" name="outputSection">

</div>
</body>


</html>
