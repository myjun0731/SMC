<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input</title>
</head>
<body>
	<form action="StudentInput_confirm.jsp" name=form>
		<table border="1">
			<tr>
				<th>학생이름</th>
				<td><input type="text" name="student_name" /></td>
			</tr>

			<tr>
				<th>학번</th>
				<td><input type="text" name="student_num" /></td>
			</tr>


			<tr>
				<th>학교 이름</th>
				<td><input type="text" name="school_name" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="제출"
					onclick="update()" />
					<input type="button" value="목록" onclick="location.href='./StudentList.jsp'" /></td>
			</tr>
		</table>

		<script type="text/javascript">
			function update() {
				if (document.form.student_name.value.trim() == "") {
					alert("학생 이름 X");
					document.form.student_name.focus();
					return false;
				} else if (document.form.student_num.value.trim() == "") {
					alert("학번 이름 X");
					document.form.student_num.focus();
					return false;
				} else if (document.form.school_name.value.trim() == "") {
					alert("학교 이름 X");
					document.form.school_name.focus();
					return false;
				} else {
					alert("성공");
					document.form.submit();
					return true;
				}

			}
		</script>
	</form>
</body>
</html>