<?php
$con=mysql_connect("localhost","root","");
if(!$con) {
	die(mysql_error());
}
$db_selected=mysql_select_db("KDADMIN",$con);
if('POST'=== $_SERVER['REQUEST_METHOD']) {
$x=$_POST["EMAIL"];
$y=$_POST["pw1"];
if($x!='') {
$sql="select *from usersinfo where Email='$x'";
if(!mysql_query($sql,$con)) {
	die(mysql_error());
}
$res=mysql_query($sql,$con);
$row=mysql_fetch_array($res);
if($row['Email']===$x) {
	if($row['Password']===$y) {
		$sqlau="insert into activeuser(uname) values('$x')";
		if(!mysql_query($sqlau,$con)) {
			die(mysql_error());		
		}
		else {
			header("Location: kivi2.php");
		}
    	exit;	
	}
	else {
		echo "<script>alert('Wrong password'); window.location.href='login.html';</script>";
		exit;
	}
}
else {
	echo "<script>alert('Wrong username'); window.location.href='login.html';</script>";
	exit;
}
}
else {
	header("Location: login.html");
    	exit;
}
}
mysql_close($con);
?>