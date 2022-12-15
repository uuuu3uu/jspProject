package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conn.SecurityUtil;

public class MemJoinOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		String tel = request.getParameter("tel")==null ? "" : request.getParameter("tel");
		String birthday = request.getParameter("birthday")==null ? "" : request.getParameter("birthday");
		String gender = request.getParameter("gender")==null ? "" : request.getParameter("gender");
		String email = request.getParameter("email")==null ? "" : request.getParameter("email");
		String address = request.getParameter("address")==null ? "" : request.getParameter("address");
		// 알게된 경로 처리
		
		System.out.println("mid: " + mid + ", pwd : " + pwd);
		
		
		String[] paths = request.getParameterValues("path");
		String path = "";
		if(paths.length != 0) {
			for(String strPath : paths) {
				path += strPath + "/";
			}
		}
		path = path.substring(0, path.lastIndexOf("/"));
		
		// DB에 저장 시, 테이블 설계에서 지정한 각 필드의 길이 체크
		
		// 아이디와 닉네임을 다시 한번 중복체크 해준다
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getLoginCheck(mid);
		if(vo != null) {
			request.setAttribute("msg", "idCheckNO");
			request.setAttribute("url", request.getContextPath()+"/memJoin.mem");
			return;
		}
		
		// 비밀번호 암s호화처리(sha256 방식)
		SecurityUtil security = new SecurityUtil();
		pwd = security.encryptSHA256(pwd);
		
		// 모든 체크가 완료되었다면 회언정보를 vo에 담아서 DB(DAO객체)로 넘겨준다.
		vo = new MemberVO();
		vo.setMid(mid);
		vo.setPwd(pwd);
		vo.setName(name);
		vo.setTel(tel);
		vo.setBirthday(birthday);
		vo.setGender(gender);
		vo.setEmail(email);
		vo.setAddress(address);
		vo.setPath(path);
		System.out.println("vo : " + vo);
		int res = dao.setMemberJoinOk(vo);
		
		if(res == 1) {
			request.setAttribute("msg", "memJoinOK");
			request.setAttribute("url", request.getContextPath()+"/memLogin.mem");
		}
		else {
			request.setAttribute("msg", "memJoinNO");
			request.setAttribute("url", request.getContextPath()+"/memJoin.mem");
		}
		
		

	}

}
