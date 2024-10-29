package study;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBC {

	public Connection conn;
	public PreparedStatement pstmt;
	public ResultSet rs;

	public JDBC() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "system";
			String db_pw = "1234";

			conn = DriverManager.getConnection(url, db_id, db_pw);

			System.out.println("DB 연결성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();

			System.out.println("JDBC 해제");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
