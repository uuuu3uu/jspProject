package booking;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookCheckOkCommand implements BookInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bookingDate = request.getParameter("bookingDate");
		

		BookDAO dao = new BookDAO();
		
		ArrayList<BookVO> bookingVos = dao.getBookingDate(bookingDate);
		
		int[] array = {10,11,12,13,14,15,16,17,18};
		
		System.out.println("bookingDate : " + bookingDate);
		System.out.println("bookingVos : " + bookingVos);
		
		request.setAttribute("bookingVos", bookingVos);
		request.setAttribute("bookingDate", bookingDate);
		request.setAttribute("array", array);
	}

}
