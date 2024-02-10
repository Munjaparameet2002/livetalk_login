<?php

    $con=mysqli_connect("localhost","id21727528_live","Live@1234","id21727528_live_talk") or die("databaes not connnected");
    $name=$_REQUEST['name'];
    $contact=$_REQUEST['contact'];
    $email=$_REQUEST['email'];
    $pass=$_REQUEST['pass'];
    $sql="insert into live values('null','$name','$contact','$email','$pass')";
    $res=mysqli_query($con,$sql);
    if($res){
	    	echo "Data is inserted...!";
    }
    else{
	    	echo "Data not inserted...!";
    }

?>