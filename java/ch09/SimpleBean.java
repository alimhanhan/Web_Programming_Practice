package ch09;

public class SimpleBean {
	//멤버 변수(필드)
	private String message = "";
	
	//getter 메소드와 setter 메소드 설정
	public void setMessage(String message) //setter 메소드
	{
		this.message = message;
	}
	
	public String getMessage()  //getter 메소드
	{
		return this.message;
	}
}
