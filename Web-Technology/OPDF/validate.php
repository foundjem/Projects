<?php
$con=mysql_connect("localhost","root","");
if(!$con) {
	die(mysql_error());
}
$db_selected=mysql_select_db("ADMIN",$con);
$x=$_POST["uname"];
$y=$_POST["pw1"];
if($x!='') {
$sql="select *from admininfo where USERNAME='$x'";
if(!mysql_query($sql,$con)) {
	die(mysql_error());
}
$res=mysql_query($sql,$con);
$row=mysql_fetch_array($res);
if($row['USERNAME']==$x) {
	if($row['PASSWORD']==$y) {
		header("Location: admin.html");
    		exit;
	}
	else {
		echo "<script>alert('Wrong password'); window.location.href='login1.html';</script>";
		exit;
	}
}
else {
	echo "<script>alert('Wrong username'); window.location.href='login1.html';</script>";
	exit;
}
}
else {
	header("Location: login1.html");
    	exit;
}
mysql_close($con);
?>