<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${cp}/resources/css/join_style.css">
<script src="https://kit.fontawesome.com/073bf4c6ec.js"crossorigin="anonymous"></script><!--메인로고디자인-->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@200&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<title>회원가입</title>

</head>
<body>
	<div >
		
		<div class="join_logo">
			<i class="fab fa-pagelines"></i> <a href="${cp}" title="홈으로">Blue
				Forest</a>
		</div>


		<div class="join_input">

			<c:if test="${res == 'fail'}">
				<script>
					alert("회원정보를 정확히 입력바랍니다.")
				</script>
			</c:if>


			<p>회원가입</p>

			<form action="${cp}/member/memJoin" method="post">
				<div class="fieldlabel">
					<label for="memId">아이디</label>
				</div>
				<div class="formfield">
					<input type="text" id="memId" name="memId" maxlength="20"
						placeholder="아이디" onkeydown="inputIdChk()">
					
				</div>
				<div class="fieldlabel">
					<label for="memPw">패스워드</label>
				</div>
				<div class="formfield">
					<input type="password" id="memPw" name="memPw" maxlength="20"
						autocomplete="off" onchange="check_pw()"
						placeholder="6자 이상, 특수기호 1개이상 포함">
				</div>
				<div class="fieldlabel">
					<label for="memPwCheck">패스워드확인</label>
				</div>
				<div class="formfield">
					<input type="password" id="memPwCheck" name="memPwCheck"
						maxlength="20" autocomplete="off" onchange="check_pw()"><br>
					<span id="check"></span>
				</div>

				<div class="fieldlabel">
					<label for="memName">이름</label>
				</div>
				<div class="formfield">
					<input type="text" id="memName" name="memName" maxlength="20">
						
				</div>


				<div class="fieldlabel">
					<label for="memEmail">이메일 주소</label>
				</div>
				<div class="formfield">
					<input type="text" id="memMail" name="memMail" size="20"
						maxlength="20" value="" autocomplete="off"><span> @</span>
					<input id="memMail2" name="memMail2" list="domains"
						placeholder="도메인입력/선택">
					<datalist id="domains">
						<option value="naver.com">
						<option value="daum.net">
						<option value="gmail.com">
						<option value="yahoo.co.kr">
					</datalist>
				</div>
				<br>

				<div class="fieldlabel">
					<label for="memPhone1">연락처</label>
				</div>
				<div class="formfield">
					<select id="memPhone1" name="memPhone1">
						<option value="010" selected>010</option>
						<option value="011">011</option>
						<option value="016">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select> <label id="addNext">/</label> <input id="memPhone2"
						name="memPhone2" type="number" value="" size="4" maxlength="4"
						autocomplete="off" placeholder="예) 1234"> <input
						id="memPhone3" name="memPhone3" type="number" value="" size="4"
						maxlength="4" autocomplete="off" placeholder="예) 4567">
				</div>
				<br>

				<div class="fieldlabel">
				<label>성별</label>
				</div>
				<div class="formfield">
					<select id="memGender" name="memGender">
							<option value="남성" selected>남성</option>
							<option value="여성">여성</option>
						
					</select> 
				</div><br/>

				<div class="fieldlabel">
					<label>주소 검색</label>
				</div>
				<div class="formfield">
					<input type="text" id="memAddNum" name="memAddNum"
						placeholder="우편번호"> <input type="button" id="postcode2"
						onclick="execDaumPostcode()" value="우편번호 찾기"><br /> <label
						id="addNext">/</label> <input type="text" id="memAddress"
						name="memAddress" placeholder="주소"> <input type="text"
						id="memAddress2" placeholder="상세주소" name="memAddress2"><br />
					<label id="addNext">/</label> <input type="text" id="memAddPlus"
						name="memAddPlus" placeholder="참고항목">
				</div>
				<div id="layer"
					style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
					<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
						id="btnCloseLayer"
						style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
						onclick="closeDaumPostcode()" alt="닫기 버튼">
				</div>

				<div class="btnfield">
					<input id="joinclick" type="submit" value="완료" >
					<input id="joinclick" type="reset" value="취소" >
				</div>
			</form>

			

			<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script> <!-- 우편번화 찾기 -->
					// 우편번호 찾기 화면을 넣을 element
					var element_layer = document.getElementById('layer');

					function closeDaumPostcode() {
						// iframe을 넣은 element를 안보이게 한다.
						element_layer.style.display = 'none';
					}

					function execDaumPostcode() {
						new daum.Postcode(
								{
									oncomplete : function(data) {
										// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

										// 각 주소의 노출 규칙에 따라 주소를 조합한다.
										// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
										var addr = ''; // 주소 변수
										var extraAddr = ''; // 참고항목 변수

										//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
										if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
											addr = data.roadAddress;
										} else { // 사용자가 지번 주소를 선택했을 경우(J)
											addr = data.jibunAddress;
										}

										// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
										if (data.userSelectedType === 'R') {
											// 법정동명이 있을 경우 추가한다. (법정리는 제외)
											// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
											if (data.bname !== ''
													&& /[동|로|가]$/g
															.test(data.bname)) {
												extraAddr += data.bname;
											}
											// 건물명이 있고, 공동주택일 경우 추가한다.
											if (data.buildingName !== ''
													&& data.apartment === 'Y') {
												extraAddr += (extraAddr !== '' ? ', '
														+ data.buildingName
														: data.buildingName);
											}
											// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
											if (extraAddr !== '') {
												extraAddr = ' (' + extraAddr
														+ ')';
											}
											// 조합된 참고항목을 해당 필드에 넣는다.
											document
													.getElementById("memAddPlus").value = extraAddr;

										} else {
											document
													.getElementById("memAddPlus").value = '';
										}

										// 우편번호와 주소 정보를 해당 필드에 넣는다.
										document.getElementById('memAddNum').value = data.zonecode;
										document.getElementById("memAddress").value = addr;
										// 커서를 상세주소 필드로 이동한다.
										document
												.getElementById("memAddress2")
												.focus();

										// iframe을 넣은 element를 안보이게 한다.
										// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
										element_layer.style.display = 'none';
									},
									width : '100%',
									height : '100%',
									maxSuggestItems : 5
								}).embed(element_layer);

						// iframe을 넣은 element를 보이게 한다.
						element_layer.style.display = 'block';

						// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
						initLayerPosition();
					}

					// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
					// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
					// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
					function initLayerPosition() {
						var width = 300; //우편번호서비스가 들어갈 element의 width
						var height = 400; //우편번호서비스가 들어갈 element의 height
						var borderWidth = 5; //샘플에서 사용하는 border의 두께

						// 위에서 선언한 값들을 실제 element에 넣는다.
						element_layer.style.width = width + 'px';
						element_layer.style.height = height + 'px';
						element_layer.style.border = borderWidth + 'px solid';
						// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
						element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
								+ 'px';
						element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
								+ 'px';
					}
				</script>
			<script><!-- 비밀번호 체크 -->
					function check_pw(){
							var pw = document.getElementById('memPw').value;
							var SC = ["!","@","#","$","%"];
							var check_SC = 0;
				 
							if(pw.length < 6 || pw.length>16){
								window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
								document.getElementById('memPw').value='';
							}
							for(var i=0;i<SC.length;i++){
								if(pw.indexOf(SC[i]) != -1){
									check_SC = 1;
								}
							}
							if(check_SC == 0){
								window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
								document.getElementById('memPw').value='';
							}
							if(document.getElementById('memPw').value !='' && document.getElementById('memPwCheck').value!=''){
								if(document.getElementById('memPw').value==document.getElementById('memPwCheck').value){
									document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
									document.getElementById('check').style.color='blue';
									document.getElementById('check').style.whiteSpace="nowrap";
								}
								else{
									document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
									document.getElementById('check').style.color='red';
									document.getElementById('check').style.whiteSpace="nowrap";
								
								}
							}
						}
				</script>
		
			
		</div>
	</div>
</body>
</html>
