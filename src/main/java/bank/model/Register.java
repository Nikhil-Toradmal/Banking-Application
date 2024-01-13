package bank.model;

public class Register {

	private int regno;
	private String custname;
	private String username;
	private String password;
	private float accbal;
	public Register()
	{
		
	}
	public Register(int regno, String custname, String username, String password, float accbal) {
		super();
		this.regno = regno;
		this.custname = custname;
		this.username = username;
		this.password = password;
		this.accbal = accbal;
	}
	public int getRegno() {
		return regno;
	}
	public void setRegno(int regno) {
		this.regno = regno;
	}
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public float getAccbal() {
		return accbal;
	}
	public void setAccbal(float accbal) {
		this.accbal = accbal;
	}
	

}
