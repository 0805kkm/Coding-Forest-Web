<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<title>coding forest</title>

<style>
 body { 
            padding: 0px;
            margin: 0px;            
        }
    .img{
    position: relative;
    background-image: url("https://p4.wallpaperbetter.com/wallpaper/746/132/1020/nature-trees-sky-wallpaper-preview.jpg");                                                               
    height: 100vh;
    background-size: cover;
}
 .img-cover{
   position: absolute;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.3);                                                                 
   z-index:1;
}
.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     z-index: 2;
     width: 1500px;
     text-align: center;
}

  
</style>
</head>
<body>
	<%
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
				if (n.equals("Shipping_shippingDate"))
					shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>
<%@ include file="Menubar.jsp" %>

      <div class="img">
        <div class="content">
       	<div class="container">
		<h2 style=" font-size: 70px;color:white;font-family: 'Koulen', cursive;">Thank you for your order.</h2>
		<p style="font-size: 30px;color:white;font-family: 'Koulen', cursive;">	You can use this lecture in coding forest<%	out.println(shipping_shippingDate);	%> !!	
		<p style="font-size: 30px;color:white;font-family: 'Koulen', cursive;">	Order number:	<%	out.println(shipping_cartId);	%>		
	</div>
	<div class="container">
		<p><button class="btn" style="color:#369F36" onclick="location.href='./home.jsp'" type="button">Home</button></p>		
	</div>
       
       </div>
       <div class="img-cover"></div>
    </div>
	
</body>
</html>
<%
	session.invalidate();

	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_shippingDate"))
			thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}
%>
