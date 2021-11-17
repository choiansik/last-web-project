<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@200&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">

	<title>게시판 페이지</title>
  
</head>
 
<body>
   <h2>board list</h2>

	<table>

		<colgroup>

			<col style="width:5%;" />

			<col style="width:auto;" />

			<col style="width:15%;" />

			<col style="width:10%;" />

			<col style="width:10%;" />

		</colgroup>

		<thead>

			<tr>

				<th>NO</th>

				<th>글제목</th>

				<th>작성자</th>

				<th>조회수</th>

				<th>작성일</th>

			</tr>

		</thead>

		<tbody>

			<c:choose>

				<c:when test="${empty boardList }" >

					<tr><td colspan="5" align="center">데이터가 없습니다.</td></tr>

				</c:when> 

				<c:when test="${!empty boardList}">

					<c:forEach var="list" items="${boardList}">

						<tr>

							<td><c:out value="${list.bid}"/></td>

							<td><c:out value="${list.title}"/></td>

							<td><c:out value="${list.reg_id}"/></td>

							<td><c:out value="${list.view_cnt}"/></td>

							<td><c:out value="${list.reg_dt}"/></td>

						</tr>

					</c:forEach>

				</c:when>

			</c:choose>

		</tbody>

	</table>




</body>
 
</html>



