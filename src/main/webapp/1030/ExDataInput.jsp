<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="ExDataInput_confrim.jsp" name="form">
        <table border="1">

            <tr>
                <th>이름</th>
                <td><input type="text" name="korea_name"/></td>
            </tr>

            <tr>
                <th>학번</th>
                <td><input type="text" name="student_num"/></td>
            </tr>
            <tr>
                <th>생년월일</th>
                <td><input type="text" name="birth_date"/></td>
            </tr>
            <tr>
                <th>혈액형</th>
                <td><input type="text" name="blood_type"/></td>
            </tr>
            <tr>
            	<td colspan="2"><input type="submit" value="제출"></td>
            </tr>
        </table>

    </form>

    <a href="ExDateList.jsp">ExDateList</a>
</body>
</html>