<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Merchant Site</title>
<style>
body{
font-family:Verdana, sans-serif	;
font-size::12px;
}
.wrapper{
width:980px;
margin:0 auto;	
}
table{

}
tr{
	padding:5px
}
td{
padding:5px;	
}
input{
padding:5px;	
}
</style>
<script type="text/javascript">
function getData()
{
	var d = new Date();
	var n = d.getTime();
	var orderID = n +  '' +randomFromTo(0,1000);
	
	document.getElementById("hdnOrderID").value = orderID;
	return true;
}

function randomFromTo(from, to){
    return Math.floor(Math.random() * (to - from + 1) + from);
}


</script>
</head>
<body >
<div class="wrapper">
<form action="meTrnStausSuccess.jsp" method="post">
<center> <H3> Transaction Status Request </H3></center>
    <table>
        <tr>
            <td><label for="one"> Merchant ID</label></td>
            <td><input type="text" value="AWL000000000001" id="mid" name="mid"></td>
			 <td><label for="one"> Encryption Key </label></td>
            <td><input type="text" value="4d5390bef3ef1ee3d4a7e77fd42238cb" id="encKey" name="encKey"></td>
			
        </tr>
        <tr>
            <td><label for="two">Order ID</label></td>
            <td><input type="text" value="" id="hdnOrderID" name="hdnOrderID"></td>
            <td><label for="two">Transaction Ref No </label></td>
            <td><input type="text" value="" id="trnRefNo" name="trnRefNo"></td>
            <td><input type="submit" name="CHECKOUT" value= "CHECKOUT" style="width: 100%;" /></td>
            <td><label for="three"> </label></td>
            <td></td>
        </tr>
        
    </table>
</form>    
</div>
</body>
</html>