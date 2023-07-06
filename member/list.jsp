<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>

<style>
.table_area {
	width: 80%;
	text-align: center;
	margin: 0 auto;
}

.write_btn {
	float: right;
	margin: 20px;
	padding: 10px;
}
</style>

</head>
<body>

	<%@ include file="/WEB-INF/views/menu.jsp"%>

	<%!String greeting = "게 시 판";%>

	<div class="p-5 mb-4 bg-body-secondary">
		<div class="container-fluid py-3">
			<h1 class="display-3"><%=greeting%></h1>
		</div>
	</div>

	<div class="container">
		<input class="write_btn" type="button"
			onclick="location.href='/member/write';" value="사원등록" />
	</div>

	<div class="container">
		<table class="table table-hover" style="text-align: center">
			<thead>
				<tr>
					<th width="10%">사원번호</th>
					<th width="40%">사원이름</th>
					<th width="20%">업무</th>
					<th width="20%">부서번호</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ mList }" var="item">
					<c:url value="/member" var="murl" />
					<tr>
						<td>${ item.empno }</td>
						<td><a href="/member/read?empno=${ item.empno }">${ item.ename }</a></td>
						<td>${ item.job }</td>
						<td>${ item.deptno }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>

	<%@ include file="/WEB-INF/views/footer.jsp"%>

	

</body>
</html>