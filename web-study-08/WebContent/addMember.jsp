<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Challenge</title>
</head>
<body>
<h2>사원 정보 입력 폼</h2>
<form method="post" action="addMemberTest.jsp">
<table>
	<tr>
		<td> 이름 </td>
		<td> <input type="text" name="name" size="20"></td>
	</tr>
	<tr>
		<td> 주소 </td>
		<td> <input type="text" name="address" size="100"></td>
	</tr>
	<tr>
		<td>주민번호</td>
		<td> <input type="text" name="ssn" size="15"> - <input type="password" name="ssn1" size="15"></td>
	</tr>
	<tr>
		<td> <input type="submit" value="전송"> </td>
		<td> <input type="reset" value="취소"> </td>
	</tr>
</table>
<a href="deleteMember.jsp"> 사원 정보 삭제</a>
</form>
</body>
</html>