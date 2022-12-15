package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemIdCheckCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 아이디 체크
		String mid = request.getParameter("mid")==null? "" : request.getParameter("mid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getLoginCheck(mid);
		
		if(vo == null ) {			// 사용가능한 아이디
			 request.setAttribute("res", 1);
		}
		else {
			request.setAttribute("res", 0);
		}
		request.setAttribute("mid", mid);
	}

}
