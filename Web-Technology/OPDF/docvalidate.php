<?php
$con=mysql_connect("localhost","root","");
if(!$con) {
	die(mysql_error());
}
$db_selected=mysql_select_db("ADMIN",$con);
$x=$_POST["did"];
$y=$_POST["pw1"];
if($x!='') {
$sql="select *from doctorinfo where DID='$x'";
if(!mysql_query($sql,$con)) {
	die(mysql_error());
}
$res=mysql_query($sql,$con);
$row=mysql_fetch_array($res);
if($row['DID']==$x) {
	if($row['Password']==$y) {
		header("Location: doc.html");
    		exit;
	}
	else {
		echo "<script>alert('Wrong password'); window.location.href='doctorlogin.html';</script>";
		exit;
	}
}
else {
	echo "<script>alert('Wrong username'); window.location.href='doctorlogin.html';</script>";
	exit;
}
}
else {
	header("Location: doctorlogin.html");
    	exit;
}
mysql_close($con);
?>