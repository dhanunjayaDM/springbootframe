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
	String mid= request.getParameter("mid");
	String encKey= request.getParameter("encKey");
	String hdnOrderID= request.getParameter("hdnOrderID");
	String trnRefNo= request.getParameter("trnRefNo");
	String propFilePath="/spring-boot-jsp-example/src/main/resources/AWLMerchantKit.properties";
	
	AWLMEAPI transactMeAPI = new AWLMEAPI();
	ResMsgDTO resMsgDTO =transactMeAPI.getTransactionStatus(mid, hdnOrderID, trnRefNo, encKey, propFilePath);
			//getTransactionStatus(mid, hdnOrderID, trnRefNo, encKey);


%>
<form action="" method="post">
<center> <H3> Transaction Status </H3></center>
    <table>
        <tr>
            <td><label for="one"> Transaction Ref No </label></td>
            <td><label for="one">: <%=resMsgDTO.getPgMeTrnRefNo() %> </label></td>
			 <td><label for="one"> Order ID </label></td>
            <td><label for="one">: <%=resMsgDTO.getOrderId() %> </label></td>
           
        </tr>
        
        <tr>
            <td><label for="one"> RRN </label></td>
            <td><label for="one">: <%=resMsgDTO.getRrn() %> </label></td>
			 <td><label for="one"> AuthZCode </label></td>
            <td><label for="one">: <%=resMsgDTO.getAuthZCode() %> </label></td>
             <td><label for="one"> Response Code </label></td>
            <td><label for="one">: <%=resMsgDTO.getResponseCode() %> </label></td>
			
        </tr>
        <tr>
            <td><label for="one"> Transaction Date Time </label></td>
            <td><label for="one">: <%=resMsgDTO.getTrnReqDate() %> </label></td>
			 <td><label for="one"> Transaction Status </label></td>
            <td><label for="one">: 
		            <% if(resMsgDTO.getStatusCode().equals("S"))
		            {
		         	   out.print("Success");
					   
		            }
		            else
		            {
		         	   out.print("Fail");
		            } %> </label></td>
             <td><label for="one"> Transaction Status Description </label></td>
            <td><label for="one">: <%=resMsgDTO.getStatusDesc() %> </label></td>
			
        </tr>
     <%--    <tr>
            <td><label for="two"> Additional Field1</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField1() %> </label></td>
            <td><label for="two"> Additional Field2</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField2() %> </label></td>
			 <td><label for="two"> Additional Field3</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField3() %> </label></td>
        </tr> --%>
       <%--  <tr>
            <td><label for="three"> Additional Field4</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField4() %> </label></td>
            <td><label for="three"> Additional Field5</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField5() %> </label></td>
            <td><label for="three"> Additional Field6</label></td>
            <td><label for="one">: <%=resMsgDTO.getAddField6() %> </label></td>
        </tr> --%>
        <tr>
           <%--  <td><label for="three"> Additional Field7</label></td>
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