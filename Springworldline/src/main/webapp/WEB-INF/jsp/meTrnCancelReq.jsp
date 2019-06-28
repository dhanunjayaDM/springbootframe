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

</head>
<body >
<div class="wrapper">
<form action="meTrnCancelSuccess.jsp" method="post">
<center> <H3> Cancel Transaction Request </H3></center>
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
            <!-- <td><input type="submit" name="sumit" value= "sumit" style="width: 100%;" /></td>
            <td><label for="three"> </label></td>
            <td></td> -->
        </tr>
        <tr>
            <td><label for="two"> Additional Field1</label></td>
            <td><input type="text" value="" id="addField1" name="addField1" ></td>
            <td><label for="two"> Additional Field2</label></td>
            <td><input type="text" value="" id="addField2" name="addField2"></td>
			  <td><label for="two"> Additional Field3</label></td>
            <td><input type="text" value="" id="addField3" name="addField3"></td>
        </tr>
        <tr>
            <td><label for="three"> Additional Field4</label></td>
            <td><input type="text" value="" id="addField4" name="addField4"></td>
            <td><label for="three"> Additional Field5</label></td>
            <td><input type="text" value="" id="addField5" name="addField5"></td>
            <td><label for="three"> Additional Field6</label></td>
            <td><input type="text" value="" id="addField6" name="addField6"></td>
        </tr>
        <tr>
            <td><label for="three"> Additional Field7</label></td>
            <td><input type="text" value="" id="addField7" name="addField7"></td>
            <td><label for="three"> Additional Field8</label></td>
            <td><input type="text" value="" id="addField8" name="addField8"></td>
            
            <td><input type="submit" name="Submit" value= "Submit" style="width: 100%;" /></td>
            <td><label for="three"> </label></td>
            <td></td>
        </tr>
        
    </table>
</form>    
</div>
</body>
</html>