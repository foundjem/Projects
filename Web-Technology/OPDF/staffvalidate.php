<?php
$con=mysql_connect("localhost","root","");
if(!$con) {
	die(mysql_error());
}
$db_selected=mysql_select_db("ADMIN",$con);
$x=$_POST["sid"];
$y=$_POST["pw1"];
if($x!='') {
$sql="select *from staff where Staff_ID='$x'";
if(!mysql_query($sql,$con)) {
	die(mysql_error());
}
$res=mysql_query($sql,$con);
$row=mysql_fetch_array($res);
if($row['Staff_ID']==$x) {
	if($row['Password']==$y) {
		header("Location: staff.html");
    		exit;
	}
	else {
		echo "<script>alert('Wrong password'); window.location.href='stafflogin.html';</script>";
		exit;
	}
}
else {
	echo "<script>alert('Wrong username'); window.location.href='stafflogin.html';</script>";
	exit;
}
}
else {
	header("Location: stafflogin.html");
    	exit;
}
mysql_close($con);
?>