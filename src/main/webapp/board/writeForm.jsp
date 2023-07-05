<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
	String name = (String) request.getAttribute("name");
    String sessionId = (String) session.getAttribute("sessionId");
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Board</title>


</head>
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/CodingForest"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:query dataSource="${dataSource}" var="resultSet">
   SELECT * FROM MEMBER WHERE ID=?
   <sql:param value="<%=sessionId%>" />
</sql:query>

<script type="text/javascript">
	function checkForm() {
		if (!document.newWrite.name.value) {
			alert("성명을 입력하세요.");
			return false;
		}
		if (!document.newWrite.subject.value) {
			alert("제목을 입력하세요.");
			return false;
		}
		if (!document.newWrite.content.value) {
			alert("내용을 입력하세요.");
			return false;
		}		
	}
</script>
<body>
<body style="background-color:white;">
   <jsp:include page="../Menubar.jsp" />
   <hr style="background-color:#369F36;">  
       <div class="img">
        <div class="content">

	<div class="container" >
	    <h1 class="display-1" style="color:#369f36;font-family: 'Koulen', cursive;">Write</h1>
	    <hr style="margin-bottom:90px; background-color:#369f36;">
		<form name="newWrite" action="./BoardWriteAction.do"
			class="form-horizontal" method="post" onsubmit="return checkForm()">
			<input name="id" type="hidden" class="form-control"
				value="${sessionId}">
			<div class="form-group row">
				<label class="col-sm-2 control-label" style="font-family: 'Bebas Neue', cursive;">Name</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" value="<%=name %>"
						placeholder="name">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" style="font-family: 'Bebas Neue', cursive;" >Title</label>
				<div class="col-sm-5">

					<input name="subject" type="text" class="form-control"
						placeholder="subject">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" style="font-family: 'Bebas Neue', cursive;" >Text</label>
				<div class="col-sm-8">
					<textarea name="content" cols="50" rows="5" class="form-control"
						placeholder="content"></textarea>
				</div>
			</div>
			<div class="form-group row">
				 <div class="col-sm-12" style="text-align:center;">
			<button class="btn"  type="sumbit">Register</button>
             <button class="btn" type="reset" onclick="location.href='./BoardListAction.do?pageNum=1'">Cancel</button>		 
			 
				</div>
			</div>
		</form>
	  <hr style="margin-bottom:90px; background-color:#369f36;">
	</div>
	</div>
	</div>
	<hr style="background-color:#369F36;">
	<jsp:include page="../footer.jsp" />
</body>
</html>



