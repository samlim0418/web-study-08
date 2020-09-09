<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	String uid="kosea2";
	String pass="kosea2019a";
	
	String sql = "delete from EMPLOYEE values(?)";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");

try{
		//(1 단계) JDBC 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//(2 단계) 데이터베이스 연결 객체인 Connection 생성
		conn = DriverManager.getConnection(url, uid, pass);
		//(3 단계) PreparedStatement 객체 생성하기
		pstmt = conn.prepareStatement(sql);
		//(4 단계) 바인딩 변수를 채운다.
		pstmt.setString(1, name);
		//(5 단계) SQL문을 실행하여 결과 처리
		pstmt.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}finally{
	//(6단계) 사용한 리소스 해제
	try{
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
} //finally의 끝
%>
<h3> 사원 정보 삭제 성공</h3>
<a href="Member.jsp"> 회원 전체 목록 보기</a>
</body>
</html>