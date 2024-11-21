package common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnPool {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;

	// 湲곕낯 �깮�꽦�옄
	public DBConnPool() {
		try {
			// 而ㅻ꽖�뀡 ��(DataSource) �뼸湲�
			Context initCtx = new InitialContext();
			Context ctx = (Context) initCtx.lookup("java:comp/env");
			DataSource source = (DataSource) ctx.lookup("dbcp_myoracle");

			// 而ㅻ꽖�뀡 ���쓣 �넻�빐 �뿰寃� �뼸湲�
			con = source.getConnection();

			System.out.println("DB 연결 성공");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("DB 연결 실패");
			e.printStackTrace();
		}
	}

	// �뿰寃� �빐�젣(�옄�썝 諛섎궔)
	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (psmt != null)
				psmt.close();
			if (con != null)
				con.close(); // �옄�룞�쑝濡� 而ㅻ꽖�뀡 ��濡� 諛섎궔�븿

			System.out.println("DB 11");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}