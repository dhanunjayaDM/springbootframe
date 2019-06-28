 <%@page import="com.pg.dto.ReqMsgDTO"%>
<%@page import="com.pg.model.PaymentGateway"%>
<%@page import="com.awl.merchanttoolkit.transaction.*"%>
<%@page import="com.awl.merchanttoolkit.security.*"%>
<%@page import="com.awl.merchanttoolkit.dto.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Merchant WebSite</title>
		<style  type="text/css">
			div
			{
			box-shadow: 10px 10px 5px #888888;
			}
			</style>
			<script type="text/javascript">
			function postData(){	
				document.forms[0].submit();	
			}	
		</script>
</head>
<body onload="postData();">
	<%
		//Initialise Request object
		 PaymentGateway paymentGateway=new PaymentGateway();
	
		if(paymentGateway.getMid()!= null){
			
		} 

		ReqMsgDTO reqMsgDTO=new ReqMsgDTO();
		//Assing values to request object
		//Merchant ID
		String mid="";

		if(request.getParameter("mid")!=null){
		mid=request.getParameter("mid");
			reqMsgDTO.setMid(Integer.parseInt(mid));
		}
		//Merchant Encryption key
		String enckey="";

		if(request.getParameter("encKey")!=null){
		enckey=request.getParameter("encKey");
		reqMsgDTO.setEncKey(enckey);
		}

		//Merchant unique order id
		String orderId = ""; 
		if(request.getParameter("hdnOrderID")!=null)
			   orderId = request.getParameter("hdnOrderID");  
		reqMsgDTO.setHdnOrderID(Integer.parseInt(orderId));

		//Transaction amount in paisa format
		String amt = null;
		reqMsgDTO.setTrnAmt(Integer.parseInt(request.getParameter("trnAmt")));

		//Merchant transaction currency
		reqMsgDTO.setCurrency(request.getParameter("currency"));
		//reqMsgDTO.setTrnCurrency("INR");

		// Transaction remarks
		String trnRemarks = null;
		if(request.getParameter("trnRemarks")!=null)
			trnRemarks=request.getParameter("trnRemarks");
		reqMsgDTO.setTrnRemarks(trnRemarks);

		//Merchant request type S/P/R
		String meTransReqType=null;
		if(request.getParameter("meTransReqType")!=null)
			meTransReqType=request.getParameter("meTransReqType");
		reqMsgDTO.setMeTransReqType(meTransReqType);

		//Recurring period (M/W))if merchant request type is R
		String recurPeriod=null;
		if(request.getParameter("recPeriod")!=null)
			recurPeriod = request.getParameter("recPeriod");  
		reqMsgDTO.setRecPeriod(recurPeriod);

		//Recurring day if merchant request type is R
		String recurDay=null;
		if(request.getParameter("recDay")!=null)
			recurDay = request.getParameter("recDay");  
		reqMsgDTO.setRecDay(recurDay);

		//No of recurring  if merchant request type is R
		String numberRecurring=null;
		if(request.getParameter("noOfRec")!=null)
			numberRecurring = request.getParameter("noOfRec");  
		reqMsgDTO.setNoOfRec(numberRecurring);

		//Merchant response url
		reqMsgDTO.setResUrl(request.getParameter("resUrl"));

		//Optional Addition fields for Merchant use

	/* 	reqMsgDTO.setAddField1(request.getParameter("addField1"));
		reqMsgDTO.setAddField2(request.getParameter("addField2"));
		reqMsgDTO.setAddField3(request.getParameter("addField3"));
		reqMsgDTO.setAddField4(request.getParameter("addField4"));
		reqMsgDTO.setAddField5(request.getParameter("addField5"));
		reqMsgDTO.setAddField6(request.getParameter("addField6"));
		reqMsgDTO.setAddField7(request.getParameter("addField7"));
		reqMsgDTO.setAddField8(request.getParameter("addField8")); */

		// Debit / Credit Card number
		reqMsgDTO.setCardNo(Integer.parseInt(request.getParameter("cardNo")));
		// Card expiry date
		reqMsgDTO.setExpDate(Integer.parseInt(request.getParameter("expDate")));
		// Card cvv
		reqMsgDTO.setCvv(Integer.parseInt(request.getParameter("cvv")));
		// Name on Card
		reqMsgDTO.setNameOnCard(request.getParameter("nameOnCard"));
		// Card Type (DC- Debit Card / CC - Credit Card)
		reqMsgDTO.setPayTypeCode(request.getParameter("payTypeCode"));

		String merchantRequest =  null;

		try{
			AWLMEAPI transactMeAPI = new AWLMEAPI();
			reqMsgDTO= transactMeAPI.generateTrnReqMsgWithCard(reqMsgDTO);
			
			if(reqMsgDTO.getStatusDesc().equals("Success")){
				
				merchantRequest=reqMsgDTO.getReqMsg();	
			}
		}
		catch(Exception e)
		{
			out.println(e.getMessage());
		}
	%> 
<form action="https://cgt.in.worldline.com/ipg/doMEPayRequestCard" method="post">
<center>

		Please do not close and refresh the browser.
		 
		<input type="hidden" name="merchantRequest" id="merchantRequest" value="<%=merchantRequest%>"/>
		<input type="hidden" name="MID" id="MID" value="<%=mid%>" /> 
</center>
</form>



</body>
</html>