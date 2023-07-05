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
</head>


<body style="background-color: white;">

<%@ include file="Menubar.jsp" %>
<div class="container">
      	<hr style="background-color:#369F36;">  
          <h1 style="color:#369F36;font-family: 'Koulen', cursive; font-size:56px; text-align:center;">PROGRAMS</h1>
          
  
  
	<%@ include file="dbconn.jsp"%>
      <div class="row">
      
        <div class="col-md-12">
        <div class="row">
                      	<%
					String sql = "select * from product";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while (rs.next()) {
					%>
        <div class="col-4">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="./resources/images/<%=rs.getString("file")%>" alt="" onclick="location.href='./productview.jsp?id=<%=rs.getString("id")%>'"/>
            <div class="card-body">
              <h5 class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;"><%=rs.getString("name")%></h5>
              <p class="card-text" style="color:black; text-align:center; color:black; font-family: 'Dosis', sans-serif;"><%=rs.getString("price")%>원</p>
            </div>
          </div>
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

        </div>
        </div>
      </div>
    </div>
         
    <hr style="background-color:#369F36;">  
<%@ include file="footer.jsp" %>
</body>
</html>