<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.btn-success {
    color: #fff;
    background-color: #5cb85c;
    border-color: #4cae4c;
}

</style>

</head>
<body>

<div align="center">
<div  class="btn btn-success"><h3>Please select a Transaction type from below</h3></div>
<a href="meTrnReq.jsp" ><h3>Normal Transaction</h3></a>
<!-- <a href="skuTrnReq.jsp"  ><h3>SKU Transaction</h3></a> -->
<a href="meTrnCardReq.jsp"  ><h3>Card Capture Transaction</h3></a>
<a href="meTrnStatusReq.jsp"  ><h3>Transaction Status</h3></a>
<a href="meTrnCancelReq.jsp"  ><h3>Cancel Transaction Request</h3></a>
<a href="meTrnRefundReq.jsp"  ><h3>Refund Transaction Request</h3></a>
</div>

</body>
</html>