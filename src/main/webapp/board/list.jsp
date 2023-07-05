<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="mvc.model.BoardDTO"%>
<%
   String sessionId = (String) session.getAttribute("sessionId");
   List boardList = (List) request.getAttribute("boardlist");
   int total_record = ((Integer) request.getAttribute("total_record")).intValue();
   int pageNum = ((Integer) request.getAttribute("pageNum")).intValue();
   int total_page = ((Integer) request.getAttribute("total_page")).intValue();
%>
<html>
<head>
<link rel="stylesheet"   href="./resources/css/bootstrap.min.css">
<title>Board</title>

<script type="text/javascript">
	function checkForm() {	
		if (${sessionId==null}) {
			alert("로그인 해주세요.");
			return false;
		}
		location.href = "./BoardWriteForm.do?id=<%=sessionId%>"
	}
</script>
</head>
<body style="background-color:white;">
   <jsp:include page="../Menubar.jsp" />
   <hr style="background-color:#369F36;">  
       <div class="img">
        <div class="content">
        <h1 class="display-1" style="color:white;font-family: 'Koulen', cursive;"></h1>
    <div class="container">
      <form action="<c:url value="./BoardListAction.do"/>" method="post">
         <div>
            
         </div>
         <div style="padding-top: 50px">
            <table class="table">
               <tr>
                  <th style="font-family: 'Bebas Neue', cursive;">NUM</th>
                  <th style="font-family: 'Bebas Neue', cursive;">TITLE</th>
                  <th style="font-family: 'Bebas Neue', cursive;">DATE</th>
                  <th style="font-family: 'Bebas Neue', cursive;">VIEW</th>
                  <th style="font-family: 'Bebas Neue', cursive;">ID</th>
               </tr>
               <%
                  for (int j = 0; j < boardList.size(); j++) {
                     BoardDTO notice = (BoardDTO) boardList.get(j);
               %>
               <tr>
                  <td><%=notice.getNum()%></td>
                  <td><a href="./BoardViewAction.do?num=<%=notice.getNum()%>&pageNum=<%=pageNum%>"><%=notice.getSubject()%></a></td>
                  <td><%=notice.getRegist_day()%></td>
                  <td><%=notice.getHit()%></td>
                  <td><%=notice.getName()%></td>
               </tr>
               <%
                  }
               %>
            </table>
         </div>
         <div align="center">
            <c:set var="pageNum" value="<%=pageNum%>" />
            <c:forEach var="i" begin="1" end="<%=total_page%>">
               <a href="<c:url value="./BoardListAction.do?pageNum=${i}" /> ">
                  <c:choose>
                     <c:when test="${pageNum==i}">
                        <font color='4C5317'><b> [${i}]</b></font>
                     </c:when>
                     <c:otherwise>
                        <font color='4C5317'> [${i}]</font>
                     </c:otherwise>
                  </c:choose>
               </a>
            </c:forEach>
         </div>
         <div align="left">
            <table>
               <tr>
                  <td width="100%" align="left">&nbsp;&nbsp; 
                  <select name="items" class="txt">
                        <option value="subject" style="font-family: 'Bebas Neue', cursive;">TITLE</option>
                        <option value="content" style="font-family: 'Bebas Neue', cursive;">TEXT</option>
                        <option value="name" style="font-family: 'Bebas Neue', cursive;">ID</option>
                  </select> 
                  <input name="text" type="text" /> 
                  <button class="w-btn w-btn-gra1 w-btn-gra-anim" value="SEARCH " type="submit">SEARCH</button>
                  </td>
                  <td width="100%" align="right">
                     <button class="w-btn w-btn-gra1 w-btn-gra-anim" onclick="checkForm(); return false;" type="button">&laquo;WRITHING</button>
                  
                  </td>
               </tr>
            </table>
         </div>
      </form>
      <hr>
   </div>
       </div>
       <div class="img-cover"></div>
    </div>
<hr style="background-color:#369F36;">  
   <jsp:include page="../footer.jsp" />
</body>
</html>