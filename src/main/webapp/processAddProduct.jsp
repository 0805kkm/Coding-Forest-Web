<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%
   request.setCharacterEncoding("UTF-8");

   String p_id = request.getParameter("id");
   String p_name = request.getParameter("name");
   String p_unitprice = request.getParameter("price");
   String p_description = request.getParameter("description"); 
   String p_filename = request.getParameter("file");
   String p_student = request.getParameter("student");

   Date currentDatetime = new Date(System.currentTimeMillis());
   java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
   java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());
%>

<sql:setDataSource var="dataSource"
   url="jdbc:mysql://localhost:3306/CodingForest"
   driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:update dataSource="${dataSource}" var="resultSet">
  INSERT INTO product VALUES (?, ?, ?, ?, ?, ?)
      <sql:param value="<%=p_id%>" />
   <sql:param value="<%=p_name%>" />
   <sql:param value="<%=p_unitprice%>" />
   <sql:param value="<%=p_description %>" />
   <sql:param value="<%=p_filename%>" />
   <sql:param value="<%=p_student%>" />
</sql:update>

<c:if test="${resultSet>=1}">
   <c:redirect url="product.jsp" />
</c:if>
