<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사원 정보 입력 폼</h2>
<form method="post" action="deleteMemberTest.jsp">
<table>
	<tr>
		<td> 이름 </td>
		<td> <input type="text" name="name" size="20"></td>
	</tr>
	<tr>
		<td> <input type="submit" value="전송"> </td>
		<td> <input type="reset" value="취소"> </td>
	</tr>
</table>
<a href="addMember.jsp"> 사원 정보 등록</a>
</form>
</body>
</html>