<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/join_style.css"> <!-- css  -->
<script src="https://kit.fontawesome.com/073bf4c6ec.js" crossorigin="anonymous"></script><!--메인로고디자인-->
<style>
	body h1{
		text-align: center;
	}
	i{
		color: lightblue;
	}
	.homeback{
		text-align: center;
	}
	.homeback a{
		color: white;
	}
	.delete a{
	color: white;
	}
</style>
<title>회원정보수정페이지</title>
</head>
<body>
	<div>
	<div class="join_input">

		<c:if test="${res == 'fail'}">
			<script>
				alert("회원정보를 정확히 입력바랍니다.")
			</script>
		</c:if>


		<h1><i class="fab fa-pagelines"></i> 회원가입 완료</h1>
		
		<form action="${cp}/member/memModify" method="post">
			<div class="fieldlabel">
					<label for="memId">아이디</label>
				</div>
				<div class="formfield">
					<input type="text" name="memId" value="${member.getMemId()}" readonly="readonly">
				</div>
			
			<div class="fieldlabel">
					<label for="memName">이름</label>
				</div>
				<div class="formfield">
					<input type="text" name="memName" value="${member.getMemName()}" readonly="readonly">
				</div>
			<div class="fieldlabel">
				<label for="memEmail">이메일 주소</label>
			</div>
			<div class="formfield">
				<input type="text" id="memMail" name="memMail" size="20"
					maxlength="20"value="${member.getMemMail()}" 
					autocomplete="off" readonly="readonly"><span> @</span>
				<input id="memMail2" name="memMail2" list="domains"
					value="${member.getMemMail2()}" readonly="readonly">
				
			</div>
			<br>

			<div class="fieldlabel">
				<label for="memPhone1">연락처</label>
			</div>
			<div class="formfield">
				<input id="memPhone1" name="memPhone1" list="phone"
					value="${member.getMemPhone1()}" readonly="readonly">
				
					<input id="memPhone2" name="memPhone2"
					type="number"size="4" maxlength="4" autocomplete="off"
					value="${member.getMemPhone2()}"readonly="readonly"> <input id="memPhone3" name="memPhone3"
					type="number"size="4" maxlength="4" autocomplete="off"
					value="${member.getMemPhone3()}"readonly="readonly">
			</div>
			<br>

			<div class="fieldlabel">
				<label>성별</label>
			</div>
			<div class="formfield">
			<input id="memGender" name="memGender" list="gender"
					value="${member.getMemGender()}"readonly="readonly">
				
			</div>
			<br />

			<div class="fieldlabel">
				<label>주소 검색</label>
			</div>
			<div class="formfield">
				<input type="text" id="memAddNum" name="memAddNum" value="${member.getMemAddNum()}"readonly="readonly"> <input
					type="button" id="postcode2" onclick="execDaumPostcode()"
					value="우편번호 찾기"><br /> <label id="addNext">/</label> <input
					type="text" id="memAddress" name="memAddress" value="${member.getMemAddress()}"readonly="readonly"> <input type="text"
					id="memAddress2" value="${member.getMemAddress2()}" name="memAddress2"readonly="readonly"><br /> <label
					id="addNext">/</label> <input type="text" id="memAddPlus" name="memAddPlus"
					value="${member.getMemAddPlus()}"readonly="readonly">
			</div>
			<br/><br/><br/><br/><br/>

			
			<div class="homeback">
				<button style="background-color: black;"><a href="${cp}">회원가입완료</a></button>
			</div>
			
		</form>

	</div>
</div>
	
</body>
</html>