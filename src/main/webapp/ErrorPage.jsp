<%@ page contentType="text/html; charset=utf-8"%>
<html>

<head>

<title>coding forest</title>

<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">




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
     z-index: 2;
     width: 600px;
     text-align: center;
}

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
 color: white;
 border: 2px solid white;
 outline: none;
 text-decoration: none;
 text-align:center;
}

        

</style>

</head>


<body style="background-color: white;">
<jsp:include page="Menubar.jsp" />
<hr style="background-color:#369F36;">  

      <div class="img">
        <div class="content">
        <h1 class="display-1" style="color:#369f36;font-family: 'Koulen', cursive;">ERROR</h1>
        <p class="display-4" style="color:red;font-family: 'Bebas Neue', cursive;">CODE 404</p>
        <p class="display-4" style="color:black;font-family: 'Bebas Neue', cursive;">There was an error on the page.</p>
        <p class="display-4" style="color:black;font-family: 'Bebas Neue', cursive;">Please try again.</p>
        <p><button class="btn" style="color:#369F36" onclick="location.href='./home.jsp'" type="button">Home</button></p>
       </div>
       <div class="img-cover"></div>
    </div>
<hr style="background-color:#369F36;">  
<%@ include file="footer.jsp" %>
</body>
</html>