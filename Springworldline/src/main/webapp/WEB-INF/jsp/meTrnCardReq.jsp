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
<body onload="getData();">
<div class="wrapper">
	<form action="meTrnCardPay.jsp"  method="post">
		<center> <H3> Card Capture Transaction Request </H3></center>
			<table>
				<tr>
					<td><label for="one"> Merchant ID</label></td>
					<td><input type="text" value="WL000000027698" id="mid" name="mid"></td>
					 <td><label for="one"> Encryption Key </label></td>
					<td><input type="text" value="6375b97b954b37f956966977e5753" id="encKey" name="encKey"></td>
					
				</tr>
				
				<tr>
					<td><label for="two">Order ID</label></td>
					<td><input type="text" value="" id="hdnOrderID" name="hdnOrderID"></td>
					<td><label for="two"> Transaction Amount</label></td>
					<td><input type="text" value="100" id="trnAmt" name="trnAmt"></td>
					<td><label for="two"> Currency Name</label></td>
					<td><input type="text" value="INR" id="currency" name="currency"></td>
				</tr>
				<tr>
					<td><label for="three"> Transaction Type</label></td>
					<td><input type="text" value="S" id="meTransReqType" name="meTransReqType"></td>
					<td><label for="three"> Transaction Remarks</label></td>
					<td><input type="text" value="Test Transaction" id="trnRemarks" name="trnRemarks"></td>
					<td><label for="three">Recurring Period</label></td>
					<td><input type="text" value="" id="recPeriod" name="recPeriod"></td>
				</tr>
				<tr>
					<td><label for="one"> Recurring Day</label></td>
					<td><input type="text" value="" id="recDay" name="recDay"></td>
					 <td><label for="one"> No Of Recuring</label></td>
					<td><input type="text" value="" id="noOfRec" name="noOfRec"></td>
					 <td><label for="one"> Response Url</label></td>
					<td><input type="text" value="meTrnResKey.jsp" id="resUrl" name="resUrl"></td>
				</tr>
				<!-- <tr>
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
				
					<td><label for="three"> Additional Field7</label></td>
					<td><input type="text" value="" id="addField7" name="addField7"></td>
					<td><label for="three"> Additional Field8</label></td>
					<td><input type="text" value="" id="addField8" name="addField8"></td> -->
					<tr>
					<td><label for="two">Card Number</label></td>
					<td><input type="text" value="" id="cardNo" name="cardNo"></td>

				</tr>
				<tr>
					<td><label for="two">Expiry Date</label></td>
					<td><input type="text" value="" id="expDate" name="expDate"></td>
					<td><label for="two"> CVV</label></td>
					<td><input type="text" value="" id="cvv" name="cvv"></td>
					<td><label for="two"> Name On Card</label></td>
					<td><input type="text" value="" id="nameOnCard" name="nameOnCard"></td>
				</tr>
				
				<tr>
					<td><label for="two">Payment Type</label></td>
					<td><input type="text" value="" id="payTypeCode" name="payTypeCode"></td>
					<td><input type="submit" name="CHECKOUT" value= "CHECKOUT" style="width: 100%;" /></td>
					<td><label for="three"> </label></td>
					<td></td>
				</tr>
				
			</table>
	</form>    
</div>
</body>
</html>