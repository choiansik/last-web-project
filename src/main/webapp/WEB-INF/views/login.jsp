<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${cp}/resources/css/log_style.css">
<script src="https://kit.fontawesome.com/073bf4c6ec.js" crossorigin="anonymous"></script><!--메인로고디자인-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@200&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap"
	rel="stylesheet">

<title>로그인페이지</title>

</head>
<body>

	<div class="login_bg">

		<div class="login_logo">
			<i class="fab fa-pagelines"></i><a href="${cp}" title="홈으로"> BlueForest</a>
		</div>

		<div class="login_page">
		
			<c:if test="${res == 'fail'}">
				<script>
					alert("회원아이디가 아니거나 비밀번호가 틀립니다.")
				</script>
			</c:if>
				
				<form action="${cp}/member/memLogin" method="post" name="log">
					ID<br><input type="text" name="memId" size="25px"><br><br>
					PASSWORD<br><input type="password" name="memPw" size="25px"><br><br>
					<button type="submit" id="log" value="로그인" style="float: left;"
					>로그인</button>
				</form>
				
				<form action="${cp}/member/memJoinForm" name="join_btn" method="post">
					<button type="submit" id="join_btn" value="회원가입"
						style="float: right;">회원가입</button>
				</form>
				<br><br>
			<!--  	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script> -->
				<!-- 카카오톡 간편로그인 구현 -->
				<a id="custom-login-btn" href="javascript:loginWithKakao()">
					<img id="kakaotolk_img" style="border: 4px;"
					  src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
					  width="200px"/></a>
				  <p id="token-result"></p>
				  <script type="text/javascript">
				  kakao.init('96d7140929ef5a095e243b289b4ec43e');
					function loginWithKakao() {
					  Kakao.Auth.authorize({
						redirectUri: 'https://developers.kakao.com/tool/demo/oauth'
					  })
					}
					// 아래는 데모를 위한 UI 코드입니다.
					displayToken()
					function displayToken() {
					  const token = getCookie('authorize-access-token')
					  if(token) {
						Kakao.Auth.setAccessToken(token)
						Kakao.Auth.getStatusInfo(({ status }) => {
						  if(status === 'connected') {
							document.getElementById('token-result').innerText = 'login success. token: ' + Kakao.Auth.getAccessToken()
						  } else {
							Kakao.Auth.setAccessToken(null)
						  }
						})
					  }
					}
					function getCookie(name) {
					  const value = "; " + document.cookie;
					  const parts = value.split("; " + name + "=");
					  if (parts.length === 2) return parts.pop().split(";").shift();
					}
				  </script>
		</div>
	</div>
	
	</div>
	
	<script type="text/javascript">
        
	function login_okey() {
        	var name = '<c:out value="${mem.memName}"/>'
              	alert(name + "님 환영합니다.")
		}
		
    
  	</script>
</body>
</html>