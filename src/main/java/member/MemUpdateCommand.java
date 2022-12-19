package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemUpdateCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String mid = (String) session.getAttribute("sMid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getLoginCheck(mid);
		
		// JSP Form에 출력을 위한 분리작업 처리  (배열)
		// email 분리작업(@)
		String[] email = vo.getEmail().split("@");
		request.setAttribute("email1", email[0]);		
		request.setAttribute("email2", email[1]);		
		
		// 전화번호 분리(-)
		String[] tel = vo.getTel().split("-");
		request.setAttribute("tel1", tel[0]);
		request.setAttribute("tel2", tel[1]);
		request.setAttribute("tel3", tel[2]);
		
		// 주소 분리(/)
		String[] address = vo.getAddress().split("/");
		request.setAttribute("postcode", address[0]);
		request.setAttribute("roadAddress", address[1]);
		request.setAttribute("detailAddress", address[2]);
		request.setAttribute("extraAddress", address[3]);
	
		// 생일(년-월-일) : 앞에서부터 10자리 넘긴다
		request.setAttribute("birthday", vo.getBirthday().substring(0,10));
		
		// 나머지 내용들을 vo에 담아서 전송한다
		request.setAttribute("vo", vo);

	}

}
