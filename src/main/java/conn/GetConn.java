package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// 매번 DB에 연결하기 힘드니까 싱글톤 객체로 올려두면 이름만 부르면 끝이다....
public class GetConn {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/green2209J_14";
	private String user = "root";
	private String password = "1234";
	
	private static GetConn instance = new GetConn();
	
	// 객체 생성시에 DB연결
	private GetConn() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 검색 실패~~");
		} catch (SQLException e) {
			System.out.println("Database 연동실패~~");
		}
	}
	
	public Connection getConn() {
		return conn;
	}
	
	// 객체 소멸처리
	public void pstmtClose() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {}
		}
	}
	
	public void rsClose() {
		if(rs != null) {
			try {
				rs.close();
				pstmtClose();
			} catch (SQLException e) {}
		}
	}

	public static GetConn getInstance() {
		return instance;
	}
	
	
}
