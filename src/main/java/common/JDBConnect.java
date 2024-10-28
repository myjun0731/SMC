package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnect {
	/*
	 * �씠 �겢�옒�뒪�뒗 珥� 4媛쒖쓽 硫ㅻ쾭蹂��닔瑜� �꽑�뼵�븿. Connection �뜲�씠�꽣踰좎씠�뒪�� �뿰寃곗쓣 �떞�떦 Statement �씤�뙆�씪誘명꽣媛� �뾾�뒗 �젙�쟻 荑쇰━臾몄쓣
	 * �떎�뻾�븷 �븣 �궗�슜 PreparedStatement �씤�뙆�씪誘명꽣媛� �엳�뒗 �룞�쟻 荑쇰━臾몄쓣 �떎�뻾�븷 �븣 �궗�슜, �씤�뙆�씪誘명꽣�뒗 荑쇰━臾� �옉�꽦 �떆 留ㅺ컻蹂��닔濡�
	 * �쟾�떖�맂 媛믪쓣 �꽕�젙�븷 �븣 �궗�슜 ?(臾쇱쓬�몴)濡� �룷�쁽�븯�뒗�뜲, �떎�떆�븳踰� �뮘�뿉�꽌 �꽕紐낇븿 ResultSet Select 荑쇰━臾몄쓽 寃곌낵瑜� ���옣�븷 �븣
	 * �궗�슜
	 */

	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;

	// 湲곕낯 �깮�꽦�옄
	public JDBConnect() {
		try {
			// JDBC �뱶�씪�씠踰� 濡쒕뱶
			Class.forName("oracle.jdbc.OracleDriver");

			// DB�뿉 �뿰寃�
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			// jdbc:oracle:thin �삤�씪�겢 �봽濡쒗넗肄�
			// @localhost �샇�뒪�듃紐�(�샊��IP二쇱냼)
			// 1521 �룷�듃踰덊샇
			// xe SID
			String id = "system";
			String pwd = "1234";
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB �뿰寃� �꽦怨� (湲곕낯 �깮�꽦�옄)");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// �몢 踰덉�� �깮�꽦�옄
	public JDBConnect(String driver, String url, String id, String pwd) {
		try {
			// JDBC �뱶�씪�씠踰� 濡쒕뱶
			Class.forName(driver);

			// DB�뿉 �뿰寃�
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB �뿰寃� �꽦怨� (�씤�닔 �깮�꽦�옄 1)");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// �꽭 踰덉�� �깮�꽦�옄
	public JDBConnect(ServletContext applicaion) {
		try {
			// JDBC �뱶�씪�씠踰� 濡쒕뱶
			String driver = applicaion.getInitParameter("OracleDriver");
			Class.forName(driver);

			String url = applicaion.getInitParameter("OracleURL");
			String id = applicaion.getInitParameter("OracleId");
			String pwd = applicaion.getInitParameter("OraclePwd");
			// DB�뿉 �뿰寃�
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB �뿰寃� �꽦怨� (�씤�닔 �깮�꽦�옄 2)");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// �뿰寃� �빐�젣 (�옄�썝 諛섎궔)
	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (psmt != null)
				psmt.close();
			if (con != null)
				con.close();

			System.out.println("JDBC �옄�썝 �빐�젣");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
