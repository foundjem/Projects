<?php
$con=mysql_connect("localhost","root","");
if(!$con) {
	die(mysql_error());
}
$db_selected=mysql_select_db("KDADMIN",$con);
$x=$_POST['fname'];
$y=$_POST['lname'];
$z=$_POST['email'];
$w=$_POST['pw'];
$sql1="select * from usersinfo where Email='$z';";
$res=mysql_query($sql1,$con);
$row=mysql_fetch_array($res);
if(!mysql_query($sql1,$con)) {
	die(mysql_error());
}
elseif($row['Email']!=$z) {
	$sql="insert into usersinfo(Fname,Lname,Email,Password) values('$x','$y','$z','$w')";
	if(!mysql_query($sql,$con)) {
		die(mysql_error());
	}
	else {
		$act="insert into activeuser(uname) values('$z')";
		$res=mysql_query($act,$con);
		echo "<script>alert('User added successfully');</script>";
		echo "<script>window.location.href='kivi2.php';</script>";
		exit;
	}
}
else {
	echo "<script>alert('User already exists. Try signing up using different email id');</script>";
	echo "<script>window.location.href='signup.html';</script>";
}
mysql_close($con);
?>