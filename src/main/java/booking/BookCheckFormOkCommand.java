package booking;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookCheckFormOkCommand implements BookInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String product = request.getParameter("bookingProduct")==null ? "" : request.getParameter("bookingProduct");

		System.out.println("product : " + product);
		
		request.setAttribute("msg", "bookFormCheckOk");
		request.setAttribute("url", request.getContextPath()+"/");
	}

}
