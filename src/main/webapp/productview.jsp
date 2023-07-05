<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ page errorPage="ErrorPage.jsp"%>

<html>

<head>

<title>coding forest</title>

<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<script type="text/javascript">
function addToCart() {
	
	if(confirm("Would you like to add the product to your shopping cart?")) {
		document.addForm.submit();
	} else{
		document.addForm.reset();
	}
	
}
</script>
<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
p a {
    font-size: inherit;
    font-weight: inherit;
    color: #baab8f;
    letter-spacing: inherit;
}
p a:ahover {
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
p a:active{
    font-size: inherit;
    font-weight: inherit;
    color: black;
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
}     

</style>

</head>


<body style="background-color: white;">
<%@ include file="Menubar.jsp" %>
<%@ include file="dbconn.jsp"%>
<%
String aid = request.getParameter("id");
String sql = "select * from product where id="+"'"+aid+"'";
System.out.println(sql);
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();
while (rs.next()) {
%>
<div class="container">
          <hr style="background-color:#369F36;">  
          <h1 style="color:#369F36;font-family: 'Koulen', cursive; font-size:56px; text-align:center; margin-top:10px;"><%=rs.getString("name")%></h1>
      <div class="row">
         <div class="col-md-6 mt-4" style=" border-style:solid 3px; border-color:#848484;" >
           <img class="rounded" src="./resources/images/<%=rs.getString("file")%>" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:450px; height:300px;">
        </div>
        <div class="col-md-6 mt-4">
          <h1 style="color:black;font-family: 'Bebas Neue', cursive; font-size:46px;"><%=rs.getString("name")%></h1>
          <hr style="background-color:#baab8f; white-space: nowrap;"> 
          <p style="color:black;font-family: 'Dosis', sans-serif;"><%=rs.getString("description")%></p>  
         <br>
         <h5 style="color:black;font-family: 'Bebas Neue', cursive; font-size:28px;"><i class="fa-solid fa-sack-dollar" style="color: #369f36; margin-right:5px;"></i>&nbsp;Price:<%=rs.getString("price")%>$</h5>
              
         <br>
         
         <form name="addForm" action="./addCart.jsp?id=<%=rs.getString("id")%>" method="post">
         <a class="ghost-button" href="#" onclick="addToCart()">BUY</a>      
         </form>
        
        </div>
  	<%
				}
					if (rs != null)
						rs.close();
		 			if (pstmt != null)
		 				pstmt.close();
		 			if (conn != null)
						conn.close();
          	%>
        <div class="col-md-12 mt-4">
        <hr style="background-color:#369F36; white-space: nowrap;"> 
        </div>
     
      </div>
    </div>
<%@ include file="footer.jsp" %>



</body>
</html>