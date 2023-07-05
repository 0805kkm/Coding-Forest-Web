<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String sessionId = (String) session.getAttribute("sessionId");%>
<%@ page errorPage="ErrorPage.jsp"%>
<html>

<head>

<title>coding forest</title>

<link rel="stylesheet"   href="./resources/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<script type="text/javascript" src="./resources/js/validation.js"></script>

<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
    .img{
    position: relative;
     height: 100vh;
    background-size: cover;
}
 .img-cover{
   position: absolute;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0);                                                                 
   z-index:1;
}
.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     z-index: 3;
     width: 600px;
     text-align: center;
}        

</style>

</head>


<body style="background-color: white;">
<jsp:include page="/Menubar.jsp" />
<hr style="background-color:#369F36;">
<nav class="navbar navbar-expand-md navbar-light bg-white fixed-top">
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    <p></p>
  </button>
     
</nav>
      
      <div class="img">
        <div class="content">
        <h3 class="display-4" style="color:#369f36;font-family: 'Koulen', cursive;">Add Product</h3>
        <p class="display-7" style="color:#369f36;font-family: 'Bebas Neue', cursive; margin-bottom:50px;">Register to Coding Forest.</p>
       <form name="newProduct" class="form-horizontal"  action="processAddProduct.jsp" method="post" >
         <div class="form-group  row">
            <label class="col-sm-2 " style="font-family: 'Bebas Neue', cursive; color:#369f36; font-size:30px;">ID</label>
            <div class="col-sm-8">
               <input name="id" type="text" id = "productId"class="form-control" placeholder="id" style="opacity:0.8;">
            </div>
         </div>
         <div class="form-group  row">
            <label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#369f36; font-size:30px;">name</label>
            <div class="col-sm-8">
               <input name="name" type="text" id="name" class="form-control" placeholder="name" style="opacity:0.8;" >
            </div>
         </div>
         <div class="form-group  row">
            <label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#369f36; font-size:30px;">price</label>
            <div class="col-sm-8">
               <input name="price" type="text" id="Price" class="form-control" placeholder="price" style="opacity:0.8;">
            </div>
         </div>
         <div class="form-group  row">
            <label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#369f36; font-size:25px;">description </label>
            <div class="col-sm-8">
              	<textarea name="description" cols="50" rows="2" class="form-control" placeholder="description" style="opacity:0.8;" ></textarea>
            </div>
         </div>
      
        <div class ="form-group row">
			 <label class="col-sm-2" style="font-family: 'Bebas Neue', cursive; color:#369f36; font-size:30px;">Image</label>
				<div class ="col-sm-8">
 					<input type="file" name="file" class="form-control">
 				</div>
 			</div>
         <div class="form-group  row">
            <label class="col-sm-2 " style="font-family: 'Bebas Neue', cursive; color:#369f36; font-size:30px;">student </label>
            <div class="col-sm-8">
               <input name="student" type="text" class="form-control" placeholder="student" style="opacity:0.8;">

            </div>
         </div>
         <div class="form-group  row">
            <div class="col-sm-12">
            <input type="button" class="btn" style="color:#369f36" value="submit" onclick="CheckAddProduct()">
               </div>
         </div>
      </form>

        </div>
       <div class="img-cover"></div>
    </div>
   <hr style="background-color:#369F36;">
<%@ include file="footer.jsp" %>
</body>
</html>