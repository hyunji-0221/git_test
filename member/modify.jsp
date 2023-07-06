<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="/WEB-INF/views/menu.jsp"%>

	<div class="p-5 mb-4 bg-body-secondary">
		<div class="container-fluid py-3">
			<h1 class="display-3">수 정 하 기</h1>
		</div>
	</div>
	<div class="container">
		<form action="/member/modify" method="POST">
			<input type="hidden" name="empno" value="${ member.empno }"/>
			<table>
			<tr id="table_a" class="table table-borderless">
				<td style="text-align: center;">사원번호</td>
				<td>${ member.empno }</td>
				<td style="text-align: center;">사원이름</td>
				<td><input type="text" name="ename" value="${ member.ename }"/></td>
			</tr>
			<tr>
				<td style="text-align: center;">업무</td>
				<td><input type="text" name="job" value="${ member.job }"/></td>
				<td style="text-align: center;">상사번호</td>
				<td><input type="text" name="mgr" value="${ member.mgr }"/></td>
			</tr>
			<tr>
				<td style="text-align: center;">입사일</td>
				<td colspan="3">${ member.hireDate }</td>
			</tr>
			<tr>
				<td style="text-align: center;">급여</td>
				<td colspan="3"><input type="text" name="sal" value="${ member.sal }"/></td>
			</tr>
			<tr>
				<td style="text-align: center;">보너스</td>
				<td colspan="3"><input type="text" name="comm" value="${ member.comm }"/></td>
			</tr>
			<tr>
				<td style="text-align: center;">부서번호</td>
				<td colspan="3"><input type="text" name="deptno" value="${ member.deptno }"/></td>
			</tr>
				
				<tr align="center">
					<td colspan="2">
						<button type="submit">수정 완료</button>
						<button type="reset">다시입력</button>
						<button type="button" onclick="location.href='/member/list'">목록
							보기</button>
					</td>
				</tr>

			</table>
		</form>
	</div>

	<%@ include file="/WEB-INF/views/footer.jsp"%>

</body>
</html>