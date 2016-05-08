<?php
$con = mysql_connect("localhost","root","");
if (!$con) {
  die('Could not connect: ' . mysql_error());
}
mysql_select_db("admin", $con);
$x=$_POST['did'];
$y=$_POST['pw1'];
$z=$_POST['pw2'];
$w=$_POST['pw3'];
$sql="select * from doctorinfo where DID='$x'";
if(!mysql_query($sql,$con)) {
	die(mysql_error());
}
$res=mysql_query($sql,$con);
$row=mysql_fetch_array($res);
if(empty($row)) {
	echo "Invalid Entry";
}
elseif($row['Password']===$y) {
	if($z <> $w) {
		echo "Entered password doesn't match";	
	}
	elseif($z === $w) {
		$sql1="update doctorinfo set Password='$z' where DID='$x'";
		$res1=mysql_query($sql1,$con);
		echo "Password Updated";	
	}
}
else {
	echo "Invalid Entry";
}
mysql_close();
?>