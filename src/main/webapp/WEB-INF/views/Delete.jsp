<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../resources/css/log_style.css">
<script src="https://kit.fontawesome.com/073bf4c6ec.js"
	crossorigin="anonymous"></script>
<!--메인로고디자인-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@200&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap"
	rel="stylesheet">

<title>탈퇴로그인</title>

</head>
<body>

	<div class="login_bg">

		<div class="login_logo">
			<i class="fab fa-pagelines"></i><a href="${cp}" title="홈으로">
				BlueForest</a>
		</div>

		<div class="login_page">

			<c:if test="${res == 'fail'}">
				<script>
					alert("회원아이디가 아니거나 비밀번호가 틀립니다.")
				</script>
			</c:if>

			<form action="${cp}/member/memDelete"  method="post" name="log">
				ID<br>
				<input type="text" name="memId" size="25px"><br>
				<br> PASSWORD<br>
				<input type="password" name="memPw" size="25px"><br>
				<br>
				<button type="submit" id="log" onclick="deldte()" value="로그인">탈퇴</button>
			</form>

		</div>
	</div>
		
		<script type="text/javascript">
			function deldte() {
				if(alert("회원 탈퇴되었습니다") == true){
					
				}
			}
			</script>  
	
</body>
</html>





