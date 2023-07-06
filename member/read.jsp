<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#table_a {
	margin: 0 auto;
}
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

</head>
<body>

	<%@ include file="/WEB-INF/views/menu.jsp"%>

	<div class="p-5 mb-4 bg-body-secondary">
		<div class="container-fluid py-3">
			<h1 class="display-3">상 세 보 기</h1>
		</div>
	</div>

	<div class="container">
		<table id="table_a" class="table table-borderless">
			<tr>
				<td style="text-align: center;">사원번호</td>
				<td>${ member.empno }</td>
				<td style="text-align: center;">사원이름</td>
				<td>${ member.ename }</td>
			</tr>
			<tr>
				<td style="text-align: center;">업무</td>
				<td>${ member.job }</td>
				<td style="text-align: center;">상사번호</td>
				<td>${ member.mgr }</td>
			</tr>
			<tr>
				<td style="text-align: center;">입사일</td>
				<td colspan="3">${ member.hireDate }</td>
			</tr>
			<tr>
				<td style="text-align: center;">급여</td>
				<td colspan="3">${ member.sal }</td>
			</tr>
			<tr>
				<td style="text-align: center;">보너스</td>
				<td colspan="3">${ member.comm }</td>
			</tr>
			<tr>
				<td style="text-align: center;">부서번호</td>
				<td colspan="3">${ member.deptno }</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<%-- <c:choose>
					<c:when test="${ loginId == userId }"> --%>
					<button
						onclick="location.href='/member/modify?empno=${ member.empno }'">수정하기</button>
					<button id="removeBtn"
						onclick="location.href='/member/remove?empno=${ member.empno }'">삭제하기</button>
					<%-- </c:when>
				<c:otherwise> --%>
					<button
						onclick="location.href='/member/list'">목록
						보기</button> <%-- </c:otherwise> 
				</c:choose>--%>
				</td>
			</tr>
		</table>
	
	</div>

	<%@ include file="/WEB-INF/views/footer.jsp"%>
	
</body>


</html>