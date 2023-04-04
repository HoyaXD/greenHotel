package VO;

public class RoomReservationVO {
	private String id;
	private String name;
	private String roomnumber;
	private String checkin;
	private String checkout;
	private int stayday;
	
	public RoomReservationVO() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRoomnumber() {
		return roomnumber;
	}
	public void setRoomnumber(String roomnumber) {
		this.roomnumber = roomnumber;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public int getStayday() {
		return stayday;
	}
	public void setStayday(int stayday) {
		this.stayday = stayday;
	}
	public RoomReservationVO(String id, String name, String roomnumber, String checkin, String checkout, int stayday) {
		super();
		this.id = id;
		this.name = name;
		this.roomnumber = roomnumber;
		this.checkin = checkin;
		this.checkout = checkout;
		this.stayday = stayday;
	}
	
}
