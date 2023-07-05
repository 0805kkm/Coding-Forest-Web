<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String sessionId = (String) session.getAttribute("sessionId");%>
<%@ page errorPage="ErrorPage.jsp"%>
<html>

<head>

<title>coding forest</title>

<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<script type="text/javascript">
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>


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
</head>

<body style="background-color: white;">
<jsp:include page="Menubar.jsp" />

 <hr style="background-color:#369F36;">
      <div class="img">
        <div class="content">
        
       <form name="newMember" class="form-horizontal"  action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 " style="font-family: 'Bebas Neue', cursive; color:#369F36; font-size:30px;">ID</label>
				<div class="col-sm-8">
					<input name="id" type="text" class="form-control" placeholder="id" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#369F36; font-size:30px;">Password</label>
				<div class="col-sm-8">
					<input name="password" type="text" class="form-control" placeholder="password" style="opacity:0.8;" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#369F36; font-size:30px;">Check Password</label>
				<div class="col-sm-8">
					<input name="password_confirm" type="text" class="form-control" placeholder="password confirm" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#369F36; font-size:30px;">Name</label>
				<div class="col-sm-8">
					<input name="name" type="text" class="form-control" placeholder="name" style="opacity:0.8;" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#369F36; font-size:30px;">SEX</label>
				<div class="col-sm-4">
					<input name="gender" type="radio" value="남"  style="opacity:0.8;"/>Men
					<input name="gender" type="radio" value="여" style="opacity:0.8;"/>Woman
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:#369F36; font-size:35px;">Birth</label>
				<div class="col-sm-6">
					<input type="text" name="birthyy" maxlength="4" placeholder="년(4자)" size="6" style="opacity:0.8;"> 
					<select name="birthmm" style="opacity:0.8;">
						<option value="" style="font-family: 'Bebas Neue', cursive;color:black; font-size:20px;">Month</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="birthdd" maxlength="2" placeholder="일" size="4" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row ">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive; color:#369F36; font-size:30px;">E-Mail</label>
				<div class="col-sm-7">
					<input type="text" name="mail1" maxlength="80" style="opacity:0.8;">@ 
					<select name="mail2" style="opacity:0.8;">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
					</select>
				</div>				
			</div>
			<div class="form-group  row">
				<label class="col-sm-2" style="font-family: 'Bebas Neue', cursive; color:#369F36; font-size:30px;">Phone</label>
				<div class="col-sm-8">
					<input name="phone" type="text" class="form-control" placeholder="phone" style="opacity:0.8;" >

				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2 " style="font-family: 'Bebas Neue', cursive; color:#369F36; font-size:30px;">Address</label>
				<div class="col-sm-8">
					<input name="address" type="text" class="form-control" placeholder="address" style="opacity:0.8;">
				</div>
				
			</div>
			
			<div class="form-group  row">
				<div class="col-sm-12">
				     <button class="btn" style="text-align:center; color:#369F36;" type="submit">Sign up</button>
				</div>
			</div>
		</form>

       
        </div>
       <div class="img-cover"></div>
    </div>
     <hr style="background-color:#369F36;">
<%@ include file="footer.jsp" %>
</body>
</html>