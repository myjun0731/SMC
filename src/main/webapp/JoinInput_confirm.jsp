<%@page import="study.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");

String member_id = request.getParameter("member_Id");
String contents = request.getParameter("contents");

String SELECT_sql = "select * from text_input where member_id=?";

JDBC SELECT_JDBC = new JDBC();

SELECT_JDBC.pstmt = SELECT_JDBC.conn.prepareStatement(SELECT_sql);
SELECT_JDBC.pstmt.setString(1, member_id);
SELECT_JDBC.rs = SELECT_JDBC.pstmt.executeQuery();

if (SELECT_JDBC.rs.next()) {
	SELECT_JDBC.close();

	request.getRequestDispatcher("JoinInput.jsp?memberErr=" + member_id).forward(request, response);

} else {
	SELECT_JDBC.close();
	JDBC INSERT_JDBC = new JDBC();
	String INSERT_sql = "insert into text_input values(?, ?)";

	INSERT_JDBC.pstmt = INSERT_JDBC.conn.prepareStatement(INSERT_sql);
	INSERT_JDBC.pstmt.setString(1, member_id);
	INSERT_JDBC.pstmt.setString(2, contents);
	INSERT_JDBC.pstmt.executeUpdate();

	INSERT_JDBC.conn.commit();
	INSERT_JDBC.close();

	response.sendRedirect("JoinInput.jsp");
}
%>