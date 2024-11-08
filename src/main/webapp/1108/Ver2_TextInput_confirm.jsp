<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">

<%
request.setCharacterEncoding("UTF-8");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

Class.forName("oracle.jdbc.OracleDriver");

String url = "jdbc:oracle:thin:@localhost:1521:xe";
String db_id = "system";
String db_pw = "1234";
conn = DriverManager.getConnection(url, db_id, db_pw);
String member_id = request.getParameter("member_id");
String contents = request.getParameter("contents");
String sql = "insert into text_input values(seq_text_input.nextval,?,?)";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, member_id);
pstmt.setString(2, contents);
pstmt.executeUpdate();
conn.commit();
pstmt.close();
conn.close();
response.sendRedirect("Ver2_TextInputList.jsp");
%>