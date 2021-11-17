<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="${cp}/resources/css/index_style.css"> 
    <script src="https://kit.fontawesome.com/073bf4c6ec.js" crossorigin="anonymous"></script><!--메인로고디자인-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@200&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">

	
    <title>파란숲만들기</title>
</head>
<body>

<div class="body_wrapper">
	<div class="body_content">
  	<nav class="main_top">				
       <div class="main_logo"> 
   		<a class="navbar-brand" href="${cp}" title="파란숲">
           <i class="fab fa-pagelines">
           </i> Blue Forest</a>
       </div>
	            
	        <div class="main_menu">
	            <div>
		            <ul>
		                <li><a href="${cp}">Home</a></li>
		                <li><a href="${cp}/member/environment">Environment</a></li>
		                <li><a href="${cp}/member/board}">Board</a></li>
		                <li><a href="#">Real Time</a></li>
		            </ul>
	            </div>
	        </div>
	        <div class="main_login">
	        	<table>
	        	<div>
	        	<c:if test="${empty mem}">
		  			<a href="${cp}/member/memLoginForm" title="로그인"><i class="fas fa-portrait"></i></a>
  	  			</c:if>
				</div>	
				
				<div class="user">				
				<c:if test="${!empty mem}">
					<p>hello!
					<c:out value="${mem.memName}"/>&nbsp;&nbsp;님</p>
					<a href="${cp}/member/memLogout" onclick="Q_logout()">LOGOUT</a> &nbsp;&nbsp; 
					<a href="${cp}/member/memModifyForm" >MODIFY</a> &nbsp;&nbsp; 
				</div>		 
				</c:if>	  
				</table>
      	 </div>
    </nav>
  	</div>


   <footer>
      <p>Copyright 2021. ansik choi all rights reserved.   Tel : 010-4656-9141</p>
   </footer>
</div>
	<script type="text/javascript">
	function Q_logout() {
		if(confirm("로그아웃 하시겠습니까?") == true){
			alert("로그아웃되었습니다.")
		}else{
			alert("취소되었습니다.")
		}
	}
	</script> 
	
</body>
	
       	  		
</html>