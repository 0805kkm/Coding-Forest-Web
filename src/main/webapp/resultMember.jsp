<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<title>coding forest</title>

<style>
.img{
    position: relative;
    height: 70vh;
    background-size: cover;
}
 .img-cover{
   position: absolute;
   height: 70%;
   width: 70%;
   background-color: rgba(0, 0, 0, 0);                                                                 
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
<!-- 메뉴바 호출 -->
<%@ include file="Menubar.jsp" %>
<hr style="background-color:#369F36;">
      <div class="img">
        <div class="content">
       	<div class="container">
		<h2 style=" font-size: 70px;color:#369f36;font-family: 'Koulen', cursive;">Member Information</h2>
		<p style="font-size: 40px;color:black;font-family: 'Koulen', cursive;">
		
				<%
				String msg = request.getParameter("msg");
				
			if (msg != null) {
				if (msg.equals("0")){
					String loginId = (String) session.getAttribute("sessionId");
					out.println(loginId  +"<br>" +"Membership information has been modified.");
				}
					
				else if (msg.equals("1")){
					out.println("We sincerely welcome your Register.");
				}
							
			} else {
				out.println("Member information has been deleted.");
			}
		%>
			</p>
			
			
	    <%if(msg.equals("0")){
		%>
	   <p><button class="btn" style="text-align:center; color:#369f36;  background-color:whitegray;" onclick="location.href='./home.jsp'" type="button">Home</button></p>	
		<%} %>
			
		
	    <%if(msg.equals("1")){
		%>
	   <p><button class="btn" style="text-align:center; color:#369f36;  background-color:whitegray;" onclick="location.href='./login.jsp'" type="button">Login</button></p>	
		<%} %>
			
		
	</div>
       </div>
       <div class="img-cover"></div>
    </div>
     <hr style="background-color:#369F36;">
<%@ include file="footer.jsp" %>
</body>
</html>

