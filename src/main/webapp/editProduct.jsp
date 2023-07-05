<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>

<title>Edit Product</title>

<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>


</head>
<%
	String edit = request.getParameter("edit");
%>
</head>
<body>
	<jsp:include page="Menubar.jsp" />
	
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
				rs=pstmt.executeQuery();
				while (rs.next()) {
			%>
			 <div class="col-4">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="./resources/images/<%=rs.getString("file")%>" alt="" />
            <div class="card-body">
              <h5 class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;"><%=rs.getString("name")%></h5>
              <p class="card-text" style="color:black; text-align:center; color:black; font-family: 'Dosis', sans-serif;"><%=rs.getString("price")%>원</p>
           <div style=" text-align: center;">
            <button class="btn" style="text-align:center; color:#369f36;  background-color:whitegray;" type="button" onclick="location.href='./updateProduct.jsp?id=<%=rs.getString("id")%>'">EDIT</button>
            </div>
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
		<hr>
	</div>
	</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>