<?php
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }


mysql_select_db("admin", $con);

$sql="INSERT INTO doctorinfo (fname, mname, lname, address, city, state, pincode,  degree, college, year, Experience, NOY)
VALUES
('$_POST[fname]','$_POST[mname]','$_POST[lname]','$_POST[address]','$_POST[city]','$_POST[state]','$_POST[pincode]','$_POST[degree]','$_POST[college]','$_POST[year]','$_POST[exp]','$_POST[noy]');";

if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
echo "1 record added";





mysql_close($con)
?> 
  