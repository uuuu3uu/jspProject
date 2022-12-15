package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemLogoutCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String sName = (String) session.getAttribute("sName");
		
		session.invalidate();
		
		request.setAttribute("msg", "LogoutOK");
		request.setAttribute("url", request.getContextPath()+"/memLogin.mem");
		request.setAttribute("val", sName);

	}

}
