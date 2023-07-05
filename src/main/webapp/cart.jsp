<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<html>
<head>
<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<%
	String cartId = session.getId();
%>
<title>coding forest</title>

<style>
p a {
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
a:link{
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
a:visited {
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
a:ahover {
    font-size: inherit;
    font-weight: inherit;
    color: #BBBBBB;
    letter-spacing: inherit;
}
a:active{
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
.ghost-button {
 display: inline-block;
 width:100px;
 height:50px;
 padding: 8px;
 color: #369F36;
 border: 2px solid #369F36;
 outline: none;
 text-decoration: none;
 text-align:center;
 background-color:#369F36;
}
</style>
</head>
<body style="background-color: white;">
<%@ include file="Menubar.jsp" %>

  
        <div class="content">
        <hr style="background-color:#369F36;">  
        <h1 class="display-1" style="color:#369F36;font-family: 'Koulen', cursive;">CART</h1>
       </div>

		<div class="container mt-5">
			<div class = "row">
				<table class = "table" style="text-align:center; border:2px solid #369F36;">
					<thead>
						<tr>
							<th style = "background-color:#369F36; font-family: 'Bebas Neue', cursive; text-align:center;">Image</th>
							<th style = "background-color:#369F36; font-family: 'Bebas Neue', cursive; text-align:center;">Product</th>
							<th style = "background-color:#369F36; font-family: 'Bebas Neue', cursive; text-align:center;">Price</th>
							<th style = "background-color:#369F36; font-family: 'Bebas Neue', cursive; text-align:center;">Note</th>
							<th style = "background-color:#369F36; font-family: 'Bebas Neue', cursive; text-align:center;"></th>							
						</tr>
					</thead>
					<tbody style="background-color:white;">
						<tr>
						<%
						int sum = 0;
						int Num = 1;
						ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
						
						if(cartList == null){
							cartList = new ArrayList<Product>();
						}
						
						for(int i=0; i<cartList.size(); i++){
							Product product = cartList.get(i);
							int total = product.getPrice();
							sum = sum + total;
							
						
						
						%>
						<td style = "background-color:white; font-family: 'Dosis', sans-serif; text-align:center;"><p><img class="rounded center-block" src="./resources/images/<%=product.getFile()%>" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:150px; height:100px;"></p></td>
						<td style = "background-color:white;font-family: 'Dosis', sans-serif;  text-align:center; font-size:28px;"><p><%=product.getName()%></p></td>
					    <td style = "background-color:white; font-family: 'Dosis', sans-serif; text-align:center;font-size:28px;"><p><%=product.getPrice()%></p></td>
						<td style = "background-color:white; font-family: 'Dosis', sans-serif; text-align:center;"><a class="ghost-button" href="./removeCart.jsp?id=<%=product.getId()%>" style="">DELETE&raquo;</a></td>
						</tr>
				<%} %>
					</tbody>
					<tbody>
					<tr>
							<th style = "background-color:#369F36; font-family: 'Bebas Neue', cursive;text-align:center;"></th>
							<th style = "background-color:#369F36; font-family: 'Bebas Neue', cursive; text-align:center;"></th>
							<th style = "background-color:#369F36; font-family: 'Bebas Neue', cursive;text-align:center;">Total</th>
							<th style = "background-color:#369F36; font-family: 'Bebas Neue', cursive;text-align:center;"><%=sum %></th>
							<th style = "background-color:#369F36; font-family: 'Bebas Neue', cursive; text-align:center;"></th>						
					</tr>
					</tbody>
				</table>
              <a class="ghost-button" href="./shippingInfo.jsp?cartId=<%=cartId%>" style="">ORDER&raquo;</a>
			</div>
		</div>
    
<hr style="background-color:#369F36;">  
<%@ include file="footer.jsp" %>
</body>
</html>
