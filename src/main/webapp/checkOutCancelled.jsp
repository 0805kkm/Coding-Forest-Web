<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<html>
<head>
<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<title>coding forest</title>

<style>
.img{
    position: relative;
    background-image: url("https://p4.wallpaperbetter.com/wallpaper/386/596/1000/nature-landscape-road-trees-wallpaper-preview.jpg");                                                               
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
<%@ include file="Menubar.jsp" %>
      <div class="img">
        <div class="content">
       	<div class="container">
		<h2 style="font-size: 70px;color:white;font-family: 'Koulen', cursive;">ORDER CANCELLATION</h2>
		<p style="font-size: 20px;color:white;font-family: 'Koulen', cursive;">Your order has been canceled.
		<p><button class="btn" style="color:#369F36" onclick="location.href='./home.jsp'" type="button">Home</button></p>	
	</div>
       </div>
       <div class="img-cover"></div>
    </div>
</body>
</html>
