<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
	request.setCharacterEncoding("UTF-8");

	   String id = request.getParameter("id");
	   String name = request.getParameter("name");
	   String unitprice = request.getParameter("price");
	   String description = request.getParameter("description"); 
	   String file = request.getParameter("file");
	   String student = request.getParameter("student");
	   
	   int price = Integer.parseInt(unitprice);
	   
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/CodingForest"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />
	
	  <sql:update dataSource="${dataSource}" var="resultSet">
	   UPDATE PRODUCT SET NAME=?, PRICE=?, DESCRIPTION=?, FILE=?, STUDENT=? WHERE ID=?
		<sql:param value="<%=name%>" />
		<sql:param value="<%=price%>" />
		<sql:param value="<%=description%>" />
		<sql:param value="<%=file%>" />
		<sql:param value="<%=student%>" />
		<sql:param value="<%=id%>" />
	</sql:update>
	
<c:if test="${resultSet>=1}">
	<c:redirect url="product.jsp" />
</c:if>