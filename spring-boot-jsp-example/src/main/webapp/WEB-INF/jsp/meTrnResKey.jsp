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
		<form action="meTrnSuccess" method="post">
			<table>
				<tr>
				<!-- Parse merchant response  -->
					<td><label for="one">Merchant Response</label></td>
					<td><input type="text" value="<%=request.getParameter("merchantResponse")%>" id="merchantResponse" name="merchantResponse"></td>
					 <td><label for="one"> Encryption Key </label></td>
					<td><input type="text" value="" id="enc_key" name="enc_key"></td>
					<td><input type="submit" name="Submit" value= "Sumit" style="width: 100%;" /></td>
				</tr>
				</table>
		  </form>   
		 </div>    
	</body>
</html>