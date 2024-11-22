<%@page import="study.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
        function not() {
            if (document.form.contents.value.trim() == "") {
                alert("값이 없잖아!!!!!!!!!!!!!!!!!!!!!");
                document.form.contents.focus();
                return false;
            } else {
                alert("등록");
                document.form.submit();
                return true;
            }
        }
    </script>
	<%
	request.setCharacterEncoding("UTF-8");
	String member_id = request.getParameter("member_id");

	String sql = "SELECT member_id, contents FROM text_input WHERE member_id=?";

	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.pstmt.setString(1, member_id);
	jdbc.rs = jdbc.pstmt.executeQuery();
	%>

	<form action="DateUpdate_confirm.jsp" name="form">
		<table border="1">

			<%
			while (jdbc.rs.next()) {
			%>
			<tr>
				<td><input type="text" name="member_id" readonly
					value="<%=jdbc.rs.getString(1)%>"></td>
				<td><input type="text" name="contents"
					value="<%=jdbc.rs.getString(2)%>"></td>
			</tr>
			<%
			}
			%>
			<tr>
				<td colspan="2"><input type="button" value="submit" onclick="not()"></td>
			</tr>
		</table>

	</form>
	<script type="text/javascript">
	
	</script>
</body>
</html>