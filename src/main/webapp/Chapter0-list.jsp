<%@page import="common.JDBConnect"%>
<%@page import="common.DBConnPool"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String driver = application.getInitParameter("OracleDriver");
	String url = application.getInitParameter("OracleURL");
	String id = application.getInitParameter("OracleId");
	String pwd = application.getInitParameter("OraclePwd");
	DBConnPool pool = new DBConnPool();


	String Id = request.getParameter("ID");
	session.setAttribute("UserId",request.getParameter("ID"));
	String pass = request.getParameter("PW");
	System.out.println(id);
	String sql = "insert into userlist values (?, ?)";
	PreparedStatement psmt = pool.con.prepareStatement(sql);
	psmt.setString(1, Id);
	psmt.setString(2, pass);

	int inResult = psmt.executeUpdate();
	out.println(inResult + "등록 완.");

	// 연결 닫기

	pool.close();
	%>

	<jsp:include page="./Link.jsp"></jsp:include>

</body>
</html>