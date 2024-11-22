<%@page import="study.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");

String member_Id = request.getParameter("member_Id");
String contents = request.getParameter("contents");

String SELECT_sql = "SELECT * FROM text_input WHERE member_Id=?";

JDBC SELECT_JDBC = new JDBC();

SELECT_JDBC.pstmt = SELECT_JDBC.conn.prepareStatement(SELECT_sql);
SELECT_JDBC.pstmt.setString(1, member_Id);
SELECT_JDBC.rs = SELECT_JDBC.pstmt.executeQuery();

if (SELECT_JDBC.rs.next()) {

	SELECT_JDBC.close();
	request.getRequestDispatcher("joininput.jsp?memberErr=" + member_Id).forward(request, response);
} else {
	SELECT_JDBC.close();
	JDBC INSERT_JDBC = new JDBC();

	String INSERT_sql = "INSERT INTO text_input VALUES(?, ?)";

	INSERT_JDBC.pstmt = INSERT_JDBC.conn.prepareStatement(INSERT_sql);
	INSERT_JDBC.pstmt.setString(1, member_Id);
	INSERT_JDBC.pstmt.setString(2, contents);
	INSERT_JDBC.pstmt.executeQuery();

	INSERT_JDBC.conn.commit();
	INSERT_JDBC.close();

	response.sendRedirect("DataList.jsp");
}
%>
