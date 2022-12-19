package member;

import java.awt.Point;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.fabric.xmlrpc.base.Member;

public class MemMyAccountCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String mid = (String) session.getAttribute("sMid");
		
		MemberDAO memDao = new MemberDAO();
		
		MemberVO vo = memDao.getLoginCheck(mid); //확인해볼것
		
		// 레벨 처리
		String strLevel = "";
		if(vo.getLevel() == 1) strLevel = "일반";
		else if(vo.getLevel() == 2) strLevel = "우수";
		else if(vo.getLevel() == 3) strLevel = "VIP";
		else if(vo.getLevel() == 4) strLevel = "VVIP";

		request.setAttribute("point", vo.getPoint());
		request.setAttribute("visitCnt", vo.getVisitCnt());
		request.setAttribute("strLevel", strLevel);
		
		System.out.println("str : " + strLevel );
		
	}

}
