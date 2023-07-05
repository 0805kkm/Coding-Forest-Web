<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();

	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>
<html>
<head>
<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<title>coding forest</title>

<style>

@keyframes gradient1 {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

@keyframes ring {
    0% {
        width: 30px;
        height: 30px;
        opacity: 1;
    }
    100% {
        width: 300px;
        height: 300px;
        opacity: 0;
    }
}

@keyframes gradient2 {
    0% {
        background-position: 100% 50%;
    }
    50% {
  

</style>
</head>
<body>
<%@ include file="Menubar.jsp" %>
 <hr style="background-color:#369F36;">  
        <div class="content">
       	<div class="container">
		<h2 style=" font-size: 70px;color:#369F36;font-family: 'Koulen', cursive;">ORDER CONFIRMATION</h2>
		<p style="font-size: 20px;color:black;font-family: 'Koulen', cursive;">  Please check it out your ORDER CONFIRMATION
	</div>
	
		<div class="container col-8 alert alert-info" style="color:#369F36;margin-top:50px; background-color:white;">
		<div class="text-center" style="color:#369F36">
			<h1>Receipt</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left" style="color:#369F36">
				<strong>Shipping Information</strong> <br> Name : <% out.println(shipping_name); %>	<br> 
			</div>
			<div class="col-4" align="right" style="color:#369F36">
				<p>	<em>Date: <% out.println(shipping_shippingDate);%></em>
			</div>
		</div>
		<div>
			<table class="table">			
			<tr>
				<th class="text-center">Product</th>
				<th class="text-center">Price</th>
				<th class="text-center"></th>
				<th class="text-center">Total</th>
			</tr>
			<%
				int sum = 0;
				ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
				if (cartList == null)
					cartList = new ArrayList<Product>();
				for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
					Product product = cartList.get(i);
					int total = product.getPrice();
					sum = sum + total;
			%>
			<tr>
				<td class="text-center"><em><%=product.getName()%> </em></td>
				<td class="text-center"><%=product.getPrice()%>원</td>
				<td class="text-center"></td>
				<td class="text-center"><%=total%>원</td>
			</tr>
			<%
				}
			%>
			<tr>
				<td> </td>
				<td> </td>
				<td class="text-right">	<strong>Total: </strong></td>
				<td class="text-center text-danger"><strong><%=sum%> </strong></td>
			</tr>
			</table>
			
				<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId%>"class="btn btn-secondary" role="button" > Back </a>
				<a href="./thankCustomer.jsp"  class="btn btn-success" role="button" style="float:right;border:none;background-color:#369F36;font-family: 'Koulen', cursive;">Order Completed </a>
				<a href="./checkOutCancelled.jsp" class="btn btn-secondary"	role="button" > Cancel </a>			
		</div>
	</div>
       </div>
     <hr style="background-color:#369F36;">  
    <%@ include file="footer.jsp" %>
</body>
</html>
