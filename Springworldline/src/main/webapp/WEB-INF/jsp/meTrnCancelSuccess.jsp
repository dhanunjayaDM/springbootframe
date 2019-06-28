<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.awl.merchanttoolkit.dto.ResMsgDTO"%>
<%@page import="com.awl.merchanttoolkit.dto.ReqMsgDTO"%>
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
	// PG MID
	String mid= request.getParameter("mid");

	// Merchant Encryption key
	String encKey= request.getParameter("encKey");

	// Merchant Order ID
	String hdnOrderID= request.getParameter("hdnOrderID");

	// PG transaction reference Number
	String trnRefNo= request.getParameter("trnRefNo");

	//Initialse request object
	reqMsgDTO reqMsgDTO = new ReqMsgDTO();

	// Assign all values to request object
	reqMsgDTO.setMid(mid);
	reqMsgDTO.setEnckey(encKey);
	reqMsgDTO.setOrderId(hdnOrderID);
	reqMsgDTO.setPgMeTrnRefNo(trnRefNo);
	
	reqMsgDTO.setAddField1(request.getParameter("addField1"));
	reqMsgDTO.setAddField2(request.getParameter("addField2"));
	reqMsgDTO.setAddField3(request.getParameter("addField3"));
	reqMsgDTO.setAddField4(request.getParameter("addField4"));
	reqMsgDTO.setAddField5(request.getParameter("addField5"));
	reqMsgDTO.setAddField6(request.getParameter("addField6"));
	reqMsgDTO.setAddField7(request.getParameter("addField7"));
	reqMsgDTO.setAddField8(request.getParameter("addField8"));
	
	// Initialse object to call cancellation request
	AWLMEAPI transactMeAPI = new AWLMEAPI();
	resMsgDTO resMsgDTO= transactMeAPI.cancelTransaction(reqMsgDTO);

	// Read cancellation response 
%>
<form action="" method="post">
<center> <H3> Cancel Transaction Status </H3></center>
    <table>
        <tr>
            <td><label for="one"> Transaction Ref No </label></td>
            <td><label for="one">: <%=resMsgDTO.getPgMeTrnRefNo() %> </label></td>
			 <td><label for="one"> Order ID </label></td>
            <td><label for="one">: <%=resMsgDTO.getOrderId() %> </label></td>
             <td><label for="one"> Cancellation req ID  </label></td>
            <td><label for="one">: <%=resMsgDTO.getPgRefCancelReqId() %> </label></td>
			
        </tr>
       
        <tr>
			<td><label for="one"> Cancel request Status </label></td>
            <td><label for="one">: 
		            <% if(resMsgDTO.getStatusCode().equals("S"))
		            {
		         	   out.print("Success");
		            }
		            else
		            {
		         	   out.print("Fail");
		            } %> </label></td>
             <td><label for="one"> Cancel Status Description </label></td>
            <td><label for="one">: <%=resMsgDTO.getStatusDesc() %> </label></td>
			
        </tr>
        <tr>
            <td><label for="two"> Additional Field1</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField1() %> </label></td>
            <td><label for="two"> Additional Field2</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField2() %> </label></td>
			 <td><label for="two"> Additional Field3</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField3() %> </label></td>
        </tr>
        <tr>
            <td><label for="three"> Additional Field4</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField4() %> </label></td>
            <td><label for="three"> Additional Field5</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField5() %> </label></td>
            <td><label for="three"> Additional Field6</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField6() %> </label></td>
        </tr>
        <tr>
            <td><label for="three"> Additional Field7</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField7() %> </label></td>
            <td><label for="three"> Additional Field8</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField8() %> </label></td>
            <td><label for="three"> Transaction Amount</label></td>
            <td><label for="one">: <%=resMsgDTO.getTrnAmt() %> </label></td>
        </tr>
    </table>
</form> 
</body>
</html> --%>