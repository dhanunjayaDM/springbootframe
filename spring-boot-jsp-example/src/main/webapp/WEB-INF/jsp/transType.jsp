<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
 <a href="<c:url value = "/meTrnReq"/>"><h3>Normal Transaction</h3></a>
<a href = "<c:url value = "/meTrnCardReq"/>"><h3>Card Capture Transaction</h3></a>
<a href = "<c:url value = "/meTrnStatusReq"/>"><h3>Transaction Status</h3></a>
<a href = "<c:url value = "/meTrnCancelReq"/>"><h3>Cancel Transaction Request</h3></a>
<a href = "<c:url value = "/meTrnRefundReq"/>"><h3>Refund Transaction Request</h3></a>
</div>

</body>
</html>