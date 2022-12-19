package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.GetConn;

public class MemberDAO {
	//싱글톤을 이용한 DB연결 객체 연결하기
	GetConn getConn = GetConn.getInstance();
	
	private Connection conn = getConn.getConn();  // GetConn.java의 driver, url, user, password="1234" 이런게 연결된..
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	MemberVO vo = null;
	
	
	//로그인의 아이디체크/ 아이디 중복체크
	public MemberVO getLoginCheck(String mid) {
		vo = new MemberVO();
		try {
			sql = "select * from member where mid = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(mid);
				vo.setPwd(rs.getString("pwd"));
				vo.setName(rs.getString("name"));
				vo.setGender(rs.getString("gender"));
				vo.setBirthday(rs.getString("birthday"));
				vo.setTel(rs.getString("tel"));
				vo.setAddress(rs.getString("address"));
				vo.setEmail(rs.getString("email"));
				vo.setPath(rs.getString("path"));
				vo.setUserDel(rs.getString("userDel"));
				vo.setPoint(rs.getInt("point"));
				vo.setLevel(rs.getInt("level"));
				vo.setVisitCnt(rs.getInt("visitCnt"));
				vo.setStartDate(rs.getString("startDate"));
				vo.setLastDate(rs.getString("lastDate"));
				vo.setTodayCnt(rs.getInt("todayCnt"));
				vo.setNoShow(rs.getInt("noShow"));				
			}
			else {
				vo = null;
			}
		} catch (SQLException e) {
			System.out.println("SQL오류 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return vo;
	}
	
	// 오늘 처음 방문 시 방문카운트 0으로 초기화
	public void setTodayContUpdate(String mid) {
		try {
			sql = "update member set today Cnt = 0 where mid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL오류 :" + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}	
	}
	
	// 신규 회원 가입처리
	public int setMemberJoinOk(MemberVO vo) {
		int res = 0;
		try {
			sql = "insert into member value (default,?,?,?,?,?,?,?,?,?,default,default,default,default,default,default,default,default)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getPwd());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getBirthday());
			pstmt.setString(6, vo.getTel());
			pstmt.setString(7, vo.getAddress());
			pstmt.setString(8, vo.getEmail());
			pstmt.setString(9, vo.getPath());
			pstmt.executeUpdate();
			res = 1;
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return res;
	}
	
	// 회원정보 수정하기 dd d
	public int setMemberUpdateOk(MemberVO vo) {
		int res = 0;
		try {
			sql = "update member set name=?, tel=?, birthday=?,"
					+ "gender=?, email=?, address=?, path=? where mid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getTel());
			pstmt.setString(3, vo.getBirthday());
			pstmt.setString(4, vo.getBirthday());
			pstmt.setString(5, vo.getGender());
			pstmt.setString(6, vo.getEmail());
			pstmt.setString(7, vo.getAddress());
			pstmt.setString(8, vo.getPath());
			pstmt.executeUpdate();
			res = 1;	
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		
		return res;
	}
}
