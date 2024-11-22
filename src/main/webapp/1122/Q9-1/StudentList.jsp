<%@page import="study.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Student List</title>
</head>
<body>

<table border="1">
<tr>
    <th>학번</th>
    <th>이름</th>
    <th>생년월일</th>
</tr>

<%
String sql = "SELECT DISTINCT st.student_id, st.person_name, TO_CHAR(p.birth_date, 'YYYY-MM-DD') " +
             "FROM student st, person p, test t " +
             "WHERE st.person_name = p.person_name AND st.student_id = t.student_id " +
             "ORDER BY st.student_id";

JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.rs = jdbc.pstmt.executeQuery(sql);

while(jdbc.rs.next()) {
%>
<tr>
    <td>
        <a href="TestScoreListByStudentId.jsp?student_id=<%=jdbc.rs.getString(1) %>"><%=jdbc.rs.getString(1) %></a>
    </td>
    <td><%=jdbc.rs.getString(2) %></td>
    <td><%=jdbc.rs.getString(3) %></td>
</tr>
<% }
jdbc.close();
%>

</table>

</body>
</html>