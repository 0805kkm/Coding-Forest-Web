<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%String sessionId = (String) session.getAttribute("sessionId");%>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>

<style>
.navbar { 
    background-color: white;;
}
</style>

<nav class="navbar navbar-expand navbar-dark " >

  <div class = "navbar-header" >
  <a class="navbar-brand" href="home.jsp" >
  
  <font size="30" color="black"><i class="fa-solid fa-tree" style="color: #369f36;"></i>
	<Strong>coding forest</Strong>
	</font>
	</a>
	</div>
 
  
  <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent" >
   
    <ul class="navbar-nav">
    
     <c:choose>
               <c:when test="${empty sessionId}">
               </c:when>
               <c:otherwise>
               <li style="padding-top: 7px; color:black">[<%=sessionId%>]</li>
<li class="nav-item"><a class="nav-link" href="<c:url value="/updateMember.jsp"/>" style="font-size:30px; text-align:center;"><i class="fa-sharp fa-regular fa-id-badge" style="color: #369f36;"></i></a></li>
         </c:otherwise>
         </c:choose>
      <li class="nav-item dropdown">
	<a class="nav-link  dropdown" href="#" data-toggle="dropdown" style="font-size:25px; color:#369F36;"><i class="fa-solid fa-bars"></i></a>
    <ul class="dropdown-menu bg bg-darker" style="background-color:white;">
      <li class="dropdown-item">
        <a class="nav-link" href="home.jsp" style="color:black;"><i class="fa-solid fa-house" style="color: #369f36;"  style="margin-right:5px;"></i> Home</a>
      </li>
      <li class="dropdown-item">
        <a class="nav-link" href="product.jsp" style="color:black;"><i class="fa-solid fa-laptop" style="color: #369f36;" style="margin-right:5px;"></i> PRODUCTS</a>
      </li>
      <li class="dropdown-item">
        <a class="nav-link" href="link.jsp" style="color:black;"><i class="fa-solid fa-link" style="color: #369f36;" style="margin-right:5px;"></i> Links</a>
      </li>
      <li class="dropdown-item">
        <a class="nav-link" href="map.jsp" style="color:black;"><i class="fa-solid fa-map" style="color: #369f36;" style="margin-right:5px;"></i> Maps</a>
      </li>
      <c:if test="${sessionId == null }">
        <li class="dropdown-item">
        <a class="nav-link" href="login.jsp" style="color:black;"><i class="fa-solid fa-right-to-bracket" style="color: #369f36;"  style="margin-right:5px;"></i> Login</a>
        <li class="dropdown-item">
        <a class="nav-link" href="addMember.jsp" style="color:black;"><i class="fa-solid fa-door-open" style="color: #369f36;"  style="margin-right:5px;"></i> Register</a>
      </c:if>
      </li>
      <c:choose>
               <c:when test="${empty sessionId}">
               </c:when>
               <c:otherwise>
               <c:if test="${sessionId eq 'root' }">
       <li class="dropdown-item">
        <a class="nav-link" href="addProduct.jsp" style="color:black;"><i class="fa-solid fa-right-to-bracket" style="color: #369f36;"  style="margin-right:5px;"></i> Add Product</a>
        <a class="nav-link" style="color:black;" href='<c:url value="/editProduct.jsp"/>'><i class="fa-solid fa-pen-to-square" style="color: #369f36; margin-right:5px;"></i>Edit Product</a>
        
       </c:if>
                  <li class="dropdown-item"><a class="nav-link" style="color:black;" href="<c:url value="/BoardListAction.do?pageNum=1"/>"><i class="fa-solid fa-square-pen" style="color: #369f36; margin-right:5px;"></i>Board</a>                      
                  <li class="dropdown-item"><a class="nav-link" style="color:black;" href='<c:url value="/updateMember.jsp"/>'><i class="fa-solid fa-pen-to-square" style="color: #369f36; margin-right:5px;"></i>Member Edit</a>
                  <li class="dropdown-item"><a class="nav-link" style="color:black;" href="<c:url value="/logoutMember.jsp"/>"><i class="fa-solid fa-right-from-bracket" style="color: #369f36; margin-right:5px;"></i>Logout</a></li>
               </c:otherwise>
            </c:choose>
    </ul>


    
<li class="nav-item"><a class="nav-link" href="cart.jsp" style="color:#369F36; font-size:30px; text-align:center;"><i class="fa-solid fa-cart-shopping"></i></a></li>

    </ul>
    
  
    
      
  </div>
</nav>

      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src = "https://code.jquery.com/jquery-3.3.1.slim.min.js" 
         integrity = "sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
         crossorigin = "anonymous">
      </script>
      
      <script src = "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
         integrity = "sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" 
         crossorigin = "anonymous">
      </script>
      
      <script src = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
         integrity = "sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" 
         crossorigin = "anonymous">
      </script>

