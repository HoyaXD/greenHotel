package VO;

public class MemberBoardVO {
	private String title;
	private String contents;
	private String id;
	private int num;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public MemberBoardVO() {
		super();
	}
	public MemberBoardVO(int num, String title, String contents, String id) {
		super();
		this.num = num;
		this.title = title;
		this.contents = contents;
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	

}
