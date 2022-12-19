package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemUpdateOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		String tel = request.getParameter("tel")==null ? "" : request.getParameter("tel");
		String birthday = request.getParameter("birthday")==null ? "" : request.getParameter("birthday");
		String gender = request.getParameter("gender")==null ? "" : request.getParameter("gender");
		String email = request.getParameter("email")==null ? "" : request.getParameter("email");
		String address = request.getParameter("address")==null ? "" : request.getParameter("address");
		
		// 알게된 경로 처리
		String[] paths = request.getParameterValues("path");
		String path = "";
		if(paths.length != 0) {
			for(String strPath : paths) {
				path += strPath + "/";
			}
		}
		path = path.substring(0, path.lastIndexOf("/"));
		
		MemberVO vo = new MemberVO();
		vo.setMid(mid);
		vo.setName(name);
		vo.setTel(tel);
		vo.setBirthday(birthday);
		vo.setGender(gender);
		vo.setEmail(email);
		vo.setAddress(address);
		
		MemberDAO dao = new MemberDAO();
		
		int res = dao.setMemberUpdateOk(vo);
		
		if(res == 1) {
			request.setAttribute("msg", "memUpdateOk");
			request.setAttribute("url", request.getContextPath()+"/memMain.mem");
		}
		else {
			request.setAttribute("msg", "memUpdateNo");
			request.setAttribute("url", request.getContextPath()+"/memUpdate.mem");
		}

	}

}
