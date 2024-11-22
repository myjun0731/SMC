<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="study.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">

<%
request.setCharacterEncoding("UTF-8");

// 파라미터 값 추출
String examDate = request.getParameter("test_date");
String examName = request.getParameter("test_name");
String studentId = request.getParameter("student_id");
String math = request.getParameter("math");
String korean = request.getParameter("korean");
String english = request.getParameter("english");
String history = request.getParameter("history");
String science = request.getParameter("science");

// SQL 쿼리 생성
String sql = "INSERT INTO test VALUES (seq_score.NEXTVAL, TO_DATE(?, 'YYYY-MM-DD HH24:MI'), ?, ?, ?, ?, ?, ?, ?)";

// JDBC 연결 및 PreparedStatement 생성
JDBC jdbc = new JDBC();
PreparedStatement pstmt = jdbc.conn.prepareStatement(sql);

// 파라미터 설정
pstmt.setString(1, examDate);
pstmt.setString(2, examName);
pstmt.setString(3, studentId);
pstmt.setString(4, math);
pstmt.setString(5, korean);
pstmt.setString(6, english);
pstmt.setString(7, history);
pstmt.setString(8, science);

// SQL 실행
pstmt.executeUpdate();
jdbc.conn.commit();
jdbc.close();	

// 페이지 리디렉션
response.sendRedirect("TestScoreListByStudentId.jsp?student_id=" + studentId);
%>