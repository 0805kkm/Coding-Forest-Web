<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page errorPage="ErrorPage.jsp"%>

<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<%
	String id = request.getParameter("id");
%>
<script type = "text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제합니다.") == true)
			location.href = "./deleteProduct.jsp?id=" + id;
		else
			return;
	}
</script>
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/CodingForest"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:query dataSource="${dataSource}" var="resultSet">
   SELECT * FROM PRODUCT WHERE ID=?
   <sql:param value="<%=id%>" />
</sql:query>


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
	
	<title>강좌 수정</title>
</head>
<body>


	<jsp:include page="/Menubar.jsp" />
<hr style="background-color:#369F36;">
      <div class="img">
        <div class="content">
        
<c:forEach var="row" items="${resultSet.rows}">
		<form name="newProduct" class="form-horizontal"
			action="processUpdateProduct.jsp" method="post"
			onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 " style="font-family: 'Bebas Neue', cursive; color:#369f36; font-size:30px;">ID</label>
				<div class="col-sm-8">
					<input name="id" type="text" class="form-control" style="opacity:0.8;" placeholder="id"
						value="<c:out value='${row.id}'/>" />
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#369f36; font-size:30px;">NAME</label>
				<div class="col-sm-8">
					<input name="name" type="text" class="form-control" style="opacity:0.8;"
						placeholder="name" value="<c:out value='${row.name}'/>" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#369f36; font-size:30px;">PRICE</label>
				<div class="col-sm-8">
					<input name="price" type="text" class="form-control"
						placeholder="price" value="<c:out value='${row.price}'/>" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#369f36; font-size:25px;">DESCRIPTION</label>
				<div class="col-sm-8">
				<textarea name="description" cols="50" rows="2" class="form-control" placeholder="description" value="<c:out value='${row.description}'/>" style="opacity:0.8;" ></textarea>
				</div>
			</div>
			<div class="form-group  row">
            <label class="col-sm-2" style="font-family: 'Bebas Neue', cursive; color:#369f36; font-size:30px;">IMAGE</label>
            <div class="col-sm-8">
               <input name="file" type="file" class="form-control" placeholder="filename" style="opacity:0.8;" >
            </div>
         </div>
			<div class="form-group  row">
				<label class="col-sm-2"style="font-family: 'Bebas Neue', cursive; color:#369f36; font-size:30px;">Student</label>
				<div class="col-sm-8">
					<input name="student" type="text" class="form-control" placeholder="student" value="<c:out value='${row.student}'/>" style="opacity:0.8;">

				</div>
			</div>
			<div class="form-group  row">
				<div class="col-sm-12">
				<button class="btn" style="text-align:center; color:#369f36;  background-color:whitegray;" type="submit">Update</button>
				<button class="btn" style="text-align:center; color:red;  background-color:whitegray;" type="button" onclick="deleteConfirm('<%=id%>')">Delete</button>
				</div>
			</div>
		</form>	
	        </div>
       <div class="img-cover"></div>
    </div>
</c:forEach>
      <hr style="background-color:#369F36;">
<%@ include file="footer.jsp" %>
</body>
</html>