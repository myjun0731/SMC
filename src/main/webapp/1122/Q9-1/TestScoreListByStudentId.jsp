<%@page import="study.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Score List By StudentId</title>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}

form {
	height: 100vh;
	display: flex;
	flex-direction: column;
	justify-content: space-around;
}
</style>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	String student_id = request.getParameter("student_id");

	String studentList_sql = "SELECT st.student_id AS 학번, st.person_name AS 이름, p.jumin_num AS 주민등록번호, "
			+ "TO_CHAR(p.birth_date, 'YYYY-MM-DD HH24:MI') AS 생일, p.blood_type || '형' AS 혈액형, "
			+ "COUNT(t.student_id) AS 시험본횟수 " + "FROM student st, person p, test t "
			+ "WHERE st.person_name = p.person_name AND st.student_id = t.student_id AND st.student_id = ? "
			+ "GROUP BY st.student_id, st.person_name, p.jumin_num, p.birth_date, p.blood_type";

	String testList_sql = "SELECT t.student_id AS 학번, TO_CHAR(test_date, 'YYYY-MM-DD HH24:MI') AS 시험본날짜, "
			+ "t.test_name AS 시험명, math AS 수학, korean AS 국어, english AS 영어, history AS 한국사, science AS 과학 " + "FROM test t "
			+ "WHERE t.student_id = ? " + "ORDER BY test_date";

	JDBC jdbc1 = new JDBC();
	jdbc1.pstmt = jdbc1.conn.prepareStatement(studentList_sql);
	jdbc1.pstmt.setString(1, student_id);
	jdbc1.rs = jdbc1.pstmt.executeQuery();
	jdbc1.rs.next();

	JDBC jdbc2 = new JDBC();
	jdbc2.pstmt = jdbc2.conn.prepareStatement(testList_sql);
	jdbc2.pstmt.setString(1, student_id);
	jdbc2.rs = jdbc2.pstmt.executeQuery();
	%>

	<form action="TestScoreListByStudentId_confirm.jsp" name="form">
		<table border="1">
			<tr>
				<th colspan="4">학생 정보</th>
			</tr>
			<tr>
				<th colspan="2">학번</th>
				<td colspan="2"><%=jdbc1.rs.getString(1)%></td>
			</tr>
			<tr>
				<th colspan="2">이름</th>
				<td colspan="2"><%=jdbc1.rs.getString(2)%></td>
			</tr>
			<tr>
				<th>주민등록번호</th>
				<td><%=jdbc1.rs.getString(3)%></td>
				<th>생일</th>
				<td><%=jdbc1.rs.getString(4)%></td>
			</tr>
			<tr>
				<th>혈액형</th>
				<td><%=jdbc1.rs.getString(5)%></td>
				<th>시험본횟수</th>
				<td><%=jdbc1.rs.getString(6)%></td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<th colspan="10">시험 결과</th>
			</tr>
			<%
			while (jdbc2.rs.next()) {
			%>
			<tr>
				<th>학번</th>
				<td colspan="2"><%=jdbc2.rs.getString(1)%></td>
				<th>시험본날짜</th>
				<td colspan="2"><%=jdbc2.rs.getString(2)%></td>
				<th>시험명</th>
				<td colspan="2"><%=jdbc2.rs.getString(3)%></td>
			</tr>
			<tr>
				<th>수학 점수</th>
				<td><%=jdbc2.rs.getString(4)%></td>
				<th>국어 점수</th>
				<td><%=jdbc2.rs.getString(5)%></td>
				<th>영어 점수</th>
				<td><%=jdbc2.rs.getString(6)%></td>
				<th>한국사 점수</th>
				<td><%=jdbc2.rs.getString(7)%></td>
				<th>과학 점수</th>
				<td><%=jdbc2.rs.getString(8)%></td>
			</tr>
			<%
			}
			%>
		</table>

		<table border="1">
			<tr>
				<th colspan="10">test input</th>
			</tr>
			<tr>
				<td>시험 본 날짜</td>
				<td colspan="2"><input type="text" name="test_date" /></td>
				<td>시험명</td>
				<td colspan="2"><input type="text" name="test_name" /></td>
				<td>학번</td>
				<td colspan="2"><input type="text" name="student_id"
					value=<%=jdbc1.rs.getString(1)%> readonly /></td>
			</tr>
			<tr>
				<td>수학</td>
				<td><input type="text" name="math" /></td>
				<td>국어</td>
				<td><input type="text" name="korean" /></td>
				<td>영어</td>
				<td><input type="text" name="english" /></td>
				<td>한국사</td>
				<td><input type="text" name="history" /></td>
				<td>과학</td>
				<td><input type="text" name="science" /></td>
			</tr>
			<tr>
				<td colspan="10"><input type="submit" value="제출" /></td>
			</tr>
		</table>
		<a href="StudentList.jsp">StudentList</a>
		<%
		jdbc1.close();
		jdbc2.close();
		%>
	</form>

</body>
</html>