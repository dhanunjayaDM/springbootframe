<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.awl.merchanttoolkit.dto.ResMsgDTO"%>
<%@page import="com.awl.merchanttoolkit.transaction.AWLMEAPI"%>

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
		<%
		// Parse Merchant encryption to parse PG response message
		String merchantResponse = null;
		
		// Merchant Encryption Key
		String enc_key =request.getParameter("enc_key");

		ResMsgDTO resMsgDTO  =null;
		if(request.getParameter("merchantResponse") != null)
		{
			// Get PG transaction response
			merchantResponse = request.getParameter("merchantResponse");
		
			// Initialise object to parse response message
			AWLMEAPI transactMeAPI = new AWLMEAPI();
			
			// Call method to parse PG transaction response
			resMsgDTO =transactMeAPI.parseTrnResMsg(merchantResponse, enc_key);
		}
		else
		{
			merchantResponse = "No response";
		}
		%>
		
		
		<form action="" method="post">
		<center> <H3>Transaction Status </H3></center>
		<br><br><br><br>
			<table>
				<tr><!--PG transaction reference  -->
					<td><label for="one"> Transaction Ref No </label></td>
					<td><label for="one">: <%=resMsgDTO.getPgMeTrnRefNo() %> </label></td>
					<!-- Merchant Order ID -->
					 <td><label for="one"> Order ID </label></td>
					<td><label for="one">: <%=resMsgDTO.getOrderId() %> </label></td>
				
				</tr>
			   
				<tr><!--Bank reference number  -->
					<td><label for="one"> RRN </label></td>
					<td><label for="one">: <%=resMsgDTO.getRrn() %> </label></td>
					<!--AuthZcode -->
					 <td><label for="one"> AuthZCode </label></td>
					<td><label for="one">: <%=resMsgDTO.getAuthZCode() %> </label></td>
					<!--Response code -->
					 <td><label for="one"> Response Code </label></td>
					<td><label for="one">: <%=resMsgDTO.getResponseCode() %> </label></td>
					
				</tr>
				<tr>
					<!--Transaction date time--> 
					<td><label for="one"> Transaction Date Time </label></td>
					<td><label for="one">: <%=resMsgDTO.getTrnReqDate() %> </label></td>
					 <td><label for="one"> Transaction Status </label></td>
					 <!--Transaction status--> 
					<td><label for="one">: 
							<% if(resMsgDTO.getStatusCode().equals("S"))
							{
							   out.print("Success");
							}
							else
							{
							  out.print("Fail");
							} %> </label></td>
							<!--Transaction status description--> 
					 <td><label for="one"> Transaction Status Description </label></td>
					<td><label for="one">: <%=resMsgDTO.getStatusDesc() %> </label></td>
				</tr>
			<%-- 	<tr>
					<!--Addition fields for Merchant use --> 
					<td><label for="two"> Additional Field1</label></td>
					<td><label for="one">: <%=resMsgDTO.getAddField1() %> </label></td>
					<td><label for="two"> Additional Field2</label></td>
					<td><label for="one">: <%=resMsgDTO.getAddField2() %> </label></td>
					 <td><label for="two"> Additional Field3</label></td>
					<td><label for="one">: <%=resMsgDTO.getAddField3() %> </label></td>
				</tr> --%>
				<%-- <tr>
					<td><label for="three"> Additional Field4</label></td>
					<td><label for="one">: <%=resMsgDTO.getAddField4() %> </label></td>
					<td><label for="three"> Additional Field5</label></td>
					<td><label for="one">: <%=resMsgDTO.getAddField5() %> </label></td>
					<td><label for="three"> Additional Field6</label></td>
					<td><label for="one">: <%=resMsgDTO.getAddField6() %> </label></td>
				</tr> --%>
				<tr>
					<%-- <td><label for="three"> Additional Field7</label></td>
					<td><label for="one">: <%=resMsgDTO.getAddField7() %> </label></td>
					<td><label for="three"> Additional Field8</label></td>
					<td><label for="one">: <%=resMsgDTO.getAddField8() %> </label></td> --%>
					<td><label for="three"> Transaction Amount</label></td>
					<td><label for="one">: <%=resMsgDTO.getTrnAmt() %> </label></td>
				</tr>
			</table>
		</form> 
	</body>
</html>




