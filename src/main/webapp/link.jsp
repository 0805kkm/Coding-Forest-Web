<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page errorPage="ErrorPage.jsp"%>
<html>

<head>

<title>coding forest</title>

<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dosis:wght@200;300&family=Koulen&family=League+Gothic&family=Smooch&display=swap" rel="stylesheet">


<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
        
    .p1 {
    position: relative;
    background-image: url("https://img.freepik.com/premium-vector/light-bulb-icon-with-hands-lamp-incandescent-bulb-vector-stock-illustration_100456-4689.jpg");
    background-position: right center;
    background-repeat: no-repeat;
    background-color: white;
    height: 500px;
    width: 100%;
}

    .p2 {
    position: relative;
    background-image: url("https://www.financejobfair.co.kr/assets/images/illustration_img_01.png");
    background-position: left center;
    background-repeat: no-repeat;
    background-color: white;
    height: 700px;
    width: 100%;
}

    .img{
    position: relative;
    background-image: url("https://img.freepik.com/free-vector/illustration-of-data-analysis-graph_53876-5875.jpg?w=2000"); 
    background-position: center;                                                             
    height: 600;
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

.ghost-button {
 display: inline-block;
 width:100px;
 height:50px;
 padding: 8px;
 color: #369f36;
 font-weight:bold;
 border: 2px solid transparent;
 outline: none;
 text-decoration: none;
 text-align:center;
}

.ghost-button:hover{
 display: inline-block;
 width:100px;
 height:50px;
 padding: 8px;
 color: #369f36;
 border: 2px solid transparent;
 outline: none;
 text-decoration: none;
 text-align:center;
}


.re1{
    position: relative;
    background-image: url("https://blog.kakaocdn.net/dn/c7SqUb/btq7FFCUhyk/0mPj6DXlcrCczcVLMVAoSk/img.jpg");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re1-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0);                                                                 
   z-index:1;
}	

.re2{
    position: relative;
    background-image: url("https://velog.velcdn.com/images/wjdguq0528/post/7b1eb364-b5f9-4460-8ed3-a2782305b507/image.png");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re2-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0);                                                                 
   z-index:1;
}

.re3{
    position: relative;
    background-image: url("https://img1.daumcdn.net/thumb/R300x0/?fname=https://blog.kakaocdn.net/dn/o2Q5J/btry2mQIpk2/FmhNqmzNXpmLT1C0jsfOxk/img.png");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re3-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0);                                                                 
   z-index:1;
}

.re4{
    position: relative;
    background-image: url("https://media.istockphoto.com/id/676079024/ko/%EB%B2%A1%ED%84%B0/%EC%BD%94%EB%94%A9-%EB%8F%84%EC%9E%A5.jpg?s=1024x1024&w=is&k=20&c=uhjzG-F_FXTgp8765gcxAAYYPVZAng8RtQ6fX9KWXj0=");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re4-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0);                                                                 
   z-index:1;
}

.re5{
    position: relative;
    background-image: url("https://yt3.googleusercontent.com/ytc/AGIKgqPjFMKaVVRnE0W--IzKuXWprzFLe2A-S-I6Mz1q=s176-c-k-c0x00ffffff-no-rj");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re5-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0);                                                                 
   z-index:1;
}

.re6{
    position: relative;
    background-image: url("https://repository-images.githubusercontent.com/492531086/3eb1ff11-4a04-4c27-8a46-31afd269fb02");                                                               
    height: 350px;
    width:350px;
    background-size: cover;
}

.re6-cover{
   position: absolute;
   text-align:center;
   transform: translate(0%, 80%);   
   height: 40%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0);                                                                 
   z-index:1;
}

</style>

</head>


<body style="background-color: white;">

<!-- 메뉴바 호출 -->
<%@ include file="Menubar.jsp" %>
<hr style="background-color:#369F36;">  
      <div class="img">
        <div class="content">
        <h1 class="display-1" style="color:black;font-family: 'Koulen', cursive;"> Validate Your Skills</h1>
       </div>
       <div class="img-cover"></div>
    </div>
<hr style="background-color:#369F36;">  
<div class="container">
 
      <div class="com-md-12" style="margin-top:150px; margin-bottom:150px;">
      <div class="row">    
        
        <div class="col-md-4 mb-3">
        <div class="re1">
        <div class="re1-cover">
        <h1><br><br><br>
        <a class="ghost-button" style="vertical-align: bottom; font-size:18px; " href="https://www.acmicpc.net/">Go Test</a>
        </div>
        </div>
        </div>
        
        <div class="col-md-4 mb-3">
        <div class="re2">
        <div class="re2-cover">
        <h1><br><br><br>
        <a class="ghost-button" style="vertical-align: bottom; font-size:18px; " href="https://programmers.co.kr/">Go Test</a>
        </div>
        </div>
        </div>
        
        <div class="col-md-4 mb-3">
        <div class="re3">
        <div class="re3-cover">
        <h1><br><br><br>
        <a class="ghost-button" style="vertical-align: bottom; font-size:18px; " href="https://codeup.kr/">Go Test</a>
        </div>
        </div>
        </div>
        
         <div class="col-md-4 mb-3">
        <div class="re4">
        <div class="re4-cover">
        <h1><br><br><br>
        <a class="ghost-button" style="vertical-align: bottom; font-size:18px; " href="https://dojang.io/">Go Test</a>
        </div>
        </div>
        </div>
        
         <div class="col-md-4 mb-3">
        <div class="re5">
        <div class="re5-cover">
        <h1><br><br><br>
        <a class="ghost-button" style="vertical-align: bottom; font-size:18px; " href="https://www.jungol.co.kr/">Go Test</a>
        </div>
        </div>
        </div>
        
        <div class="col-md-4 mb-3">
        <div class="re6">
        <div class="re6-cover">
        <h1><br><br><br>
        <a class="ghost-button" style="vertical-align: bottom; font-size:18px; " href="https://euler.synap.co.kr/prob_list.php">Go Test</a>
        </div>
        </div>
        </div>
        
        
        
   </div>
   </div>
</div>

<hr style="background-color:#369F36;">  

      <div class="p1">
      <div class="col-md-12">
      <div class="col-md-6" style="text-align:center; float: left;">
      <h1 style="margin-top:50px; color:#D4AF37; font-family: 'Bebas Neue', cursive; font-size:68px;">Competition</h1>
      <h3 style="color:black;margin-bottom:50px; text-align:left;font-family: 'Dosis', sans-serif; font-size:30px; font-weight:bold; ">Create your own specs while building various experiences with many people through the contest! </h3>
      <a href="https://allforyoung.com/?nbsrc=adwords_g&nbkw=%EA%B3%B5%EB%AA%A8%EC%A0%84&gclid=Cj0KCQjw4s-kBhDqARIsAN-ipH3y89DfO99M1KDZPS1b1IsOwX3FFIUoB7j2njYkZ0-krmpK1DLwjjEaAqu0EALw_wcB" style=" color: #D4AF37; font-family: 'Bebas Neue'; font-weight:bold">☞☞ Quick Links to "요즘것들"</a><br><br>
      <a href="https://thinkyou.co.kr/?gclid=Cj0KCQjw4s-kBhDqARIsAN-ipH2CP0kvOwgg0NriQRKDl1CHa2dpqkq-XfcdJRU8OoPFZU6_xr4VQO0aAodZEALw_wcB" style="margin-bottom: 50px; color: #D4AF37; font-family: 'Bebas Neue'; font-weight:bold">☞☞ Quick Links to "씽유"</a><br><br>
      <a href="https://www.wevity.com/" style="margin-bottom: 50px; color: #D4AF37; font-family: 'Bebas Neue'; font-weight:bold">☞☞ Quick Links to "위비티"</a><br><br>
      </div>
      </div>
      </div>
      <hr style="background-color:#369F36;">  
      <div class="p2">
      <div class="col-md-7">
      </div>
      <div class="col-md-5" style="text-align:center; float: right;">
      <h1 style="margin-top:150px; color:rgb(0, 200, 200);font-family: 'Bebas Neue', cursive; font-size:68px;">Job Site</h1>
      <h3 style="color:black;margin-bottom:50px;font-family: 'Dosis', sans-serif; font-size:25px; font-weight:bold;">
Finding the right job in a highly competitive job market can be challenging. Take advantage of job search websites to access numerous job opportunities across various industries and fields. Explore a wide range of job listings and gain access to helpful resources such as resume writing tips, interview preparation guides, and career advice. Get the information you need to succeed by leveraging the power of job search websites! </h3>
      <a href="https://www.saramin.co.kr/zf_user/" style=" color: rgb(0, 200, 200); font-family: 'Bebas Neue'; font-weight:bold">☞☞ Quick Links to "사람인"</a><br><br>
      <a href="https://www.jobkorea.co.kr/" style="margin-bottom: 50px; color: rgb(0, 200, 200); font-family: 'Bebas Neue'; font-weight:bold">☞☞ Quick Links to "잡코리아"</a><br><br>
      <a href="https://www.work.go.kr/seekWantedMain.do" style="margin-bottom: 50px; color: rgb(0, 200, 200); font-family: 'Bebas Neue'; font-weight:bold">☞☞ Quick Links to "워크넷"</a><br><br>
      </div>
      </div>
<hr style="background-color:#369F36;">  
<!-- 홈페이지 풋터-->
<%@ include file="footer.jsp" %>

</body>
</html>