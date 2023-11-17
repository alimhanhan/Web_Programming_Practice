package ch09;

public class Person {
	public String id;
	private String name;
	private String pwd="";
	
	public void setId(String id) {this.id = id;};
	public void setName(String name) {this.name = name;};
	public String getId() {return id;};
	public String getName() {return name;};
	
	public void setPwd(String pwd)
	{
		this.pwd = pwd;
	}
	
	public String getPwd()
	{
		return this.pwd;
	}
}