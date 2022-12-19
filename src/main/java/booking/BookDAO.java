package booking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.GetConn;

public class BookDAO {
	//싱글톤을 이용한 DB연결 객체 연결하기
	GetConn getConn = GetConn.getInstance();
	
	private Connection conn = getConn.getConn();  // GetConn.java의 driver, url, user, password="1234" 이런게 연결된..
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	BookVO vo = null;

	// 예약일자 검색해서 넘겨주기위한 처리
	public ArrayList<BookVO> getBookingDate(String bookingDate) {
		ArrayList<BookVO> vos = new ArrayList<>();
		try {
			sql = "select * from booking where substring(bookingDate,1,10) = ? order by bookingDate";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bookingDate);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new BookVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setCustomerCheck(rs.getString("customerCheck"));
				vo.setBookingDate(rs.getString("bookingDate"));
				vo.setOrderDate(rs.getString("orderDate"));
				vo.setpIdx(rs.getInt("pIdx"));
				vo.setBookingStatus(rs.getInt("bookingStatus"));
				
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		}
		return vos;
	}
}
	