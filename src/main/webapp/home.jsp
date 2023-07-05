<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="ErrorPage.jsp"%>
<html>

<head>

<title>coding forest</title>

<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>

<style>       

p av {
    font-size: inherit;
    font-weight: inherit;
    color: #baab8f;
    letter-spacing: inherit;
}
p av:link{
    color: #ffffff;
    letter-spacing: inherit;
}

p av:ahover {
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}

.navbar { 
    background-color: #fff;
    border-color: #000;
}
.navbar-nav li:hover {
    color: black;
    background: white;
}


</style>

</head>
<body style="background-color: white;">

<jsp:include page="/Menubar.jsp" />
<%@ include file="content.jsp" %>
<%@ include file="slide.jsp" %>
<%@ include file="footer.jsp" %>

</body>
</html>