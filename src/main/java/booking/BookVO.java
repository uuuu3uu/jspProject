package booking;

public class BookVO {
	private int idx;
	private String mid;
	private String customerCheck;
	private String bookingDate;
	private String orderDate;
	private int pIdx;
	private int bookingStatus;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getCustomerCheck() {
		return customerCheck;
	}
	public void setCustomerCheck(String customerCheck) {
		this.customerCheck = customerCheck;
	}
	public String getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getpIdx() {
		return pIdx;
	}
	public void setpIdx(int pIdx) {
		this.pIdx = pIdx;
	}
	public int getBookingStatus() {
		return bookingStatus;
	}
	public void setBookingStatus(int bookingStatus) {
		this.bookingStatus = bookingStatus;
	}
	
	
	@Override
	public String toString() {
		return "BookVO [idx=" + idx + ", mid=" + mid + ", customerCheck=" + customerCheck + ", bookingDate=" + bookingDate
				+ ", orderDate=" + orderDate + ", pIdx=" + pIdx + ", bookingStatus=" + bookingStatus + "]";
	}
	
	
}
