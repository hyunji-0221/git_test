<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.uploadResult {
	width: 100%;
	background-color: #ddd;
}

.uploadResult ul {
	display: flex;
	flex-flow: row;
	justify-content: center;
	align-items: center;
}

.uploadResult ul li {
	list-style: none;
	padding: 10px;
}

.uploadResult ul li img {
	width: 20px;
}

.uploadResult ul li span {
	color: white;
}

.bigPictureWrapper {
	position: absolute;
	display: none;
	justify-content: center;
	align-items: center;
	top: 0%;
	width: 100%;
	height: 100%;
	background-color: gray;
	z-index: 100;
	background: rgba(255, 255, 255, 0.5);
}

.bigPicture {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}

.bigPicture img {
	width: 400px;
}
</style>
<body>
	<%-- <c:choose>
		<c:when test="${ empty userId }">
			<script>alert('로그인 후 이용하세요'); location.href = '/ezen_mall/member/login.jsp';</script>
		</c:when>
		<c:otherwise> --%>
	<%@ include file="/WEB-INF/views/menu.jsp"%>
	<div class="container">

		<h2>사원등록</h2>
		<form action="/member/write" method="POST">
			<table class="table table-hover">
				<tr>
					<td>사원번호</td>
					<td><input type="text" name="empno" /></td>
					<td>사원이름</td>
					<td><input type="text" name="ename" /></td>
				</tr>
				<tr>
					<td>업무</td>
					<td><input type="text" name="job" /></td>
					<td>상사번호</td>
					<td><input type="text" name="mgr" /></td>
				</tr>
				<tr>
					<td>입사일</td>
					<td><input type="text" name="hireDate" /></td>
					<td>급여</td>
					<td><input type="text" name="sal" /></td>
				</tr>
				<tr>
					<td>보너스</td>
					<td><input type="text" name="comm" /></td>
					<td>부서번호</td>
					<td><input type="text" name="deptno" /></td>
				</tr>
				<tr>
					<td colspan="4" align="center">
					<input type="submit" class="btn btn-success" value="작성 완료">
					<button type="reset" class="btn btn-warning">다시 입력</button>
					<button type="button" class="btn btn-secondary" onclick="location.href='/member/list'">목록 보기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
	
</body>
</html>