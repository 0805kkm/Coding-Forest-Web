<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="mvc.model.BoardDTO"%>

<%
    String sessionId = (String) session.getAttribute("sessionId");
	BoardDTO notice = (BoardDTO) request.getAttribute("board");
	int num = ((Integer) request.getAttribute("num")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Board</title>

</head>
<body style="background-color:white;">
   <jsp:include page="../Menubar.jsp" />
   <hr style="background-color:#369F36;">  
       <div class="img">
        <div class="content">
    
	 <div class="container" >
	    <h1 class="display-1" style="color:#369f36;font-family: 'Koulen', cursive;">Read</h1>
		 <hr style="margin-bottom:90px; background-color:#369f36;">
		<form name="newUpdate"
			action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
			class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2 control-label" style="font-family: 'Bebas Neue', cursive;">Name</label>
				<div class="col-sm-3">
					<input name="name" class="form-control"	value=" <%=notice.getName()%>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" style="font-family: 'Bebas Neue', cursive;" >Title</label>
				<div class="col-sm-5">
					<input name="subject" class="form-control"	value=" <%=notice.getSubject()%>" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label"style="font-family: 'Bebas Neue', cursive;" >Text</label>
				<div class="col-sm-8" style="word-break: break-all;">
					<textarea name="content" class="form-control" cols="50" rows="5"> <%=notice.getContent()%></textarea>
				</div>
			</div>
         <div class="form-group row">
            <div class="col-sm-12" style="text-align:center;">
               <c:set var="userId" value="<%=notice.getId()%>" />
               <c:if test='${sessionId eq "root" }'>
                  <p>
                     <button class="btn" onclick="location.href='./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>'" type="button">Delete</button>
                     <button class="btn" onclick="location.href='./BoardListAction.do?pageNum=<%=nowpage%>'" type="submit">Edit</button>
               </c:if>
               <button class="btn" onclick="location.href='./BoardListAction.do?pageNum=<%=nowpage%>'" type="button">List</button>
            </div>
         </div>
		</form>

	</div>
	
	</div>
	</div>
	<hr style="background-color:#369F36;">  
	<jsp:include page="../footer.jsp" />
</body>
</html>


