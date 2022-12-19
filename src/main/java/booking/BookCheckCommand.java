package booking;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookCheckCommand implements BookInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bookingDate = request.getParameter("bookingDate");
		if(bookingDate == null) {s
			Date today = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			bookingDate = sdf.format(today);
		}
	
		BookDAO dao = new BookDAO();
		
		ArrayList<BookVO> bookingVos = dao.getBookingDate(bookingDate);
		
		System.out.println("bookingDate : " + bookingDate);
		System.out.println("bookingVos : " + bookingVos);
		
		request.setAttribute("bookingVos", bookingVos);
		request.setAttribute("bookingDate", bookingDate);

	}

}
