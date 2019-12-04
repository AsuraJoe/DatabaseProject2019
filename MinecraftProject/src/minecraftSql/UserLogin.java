package minecraftSql;

import java.util.Scanner;

public class UserLogin implements McQuerry {
	
	private String username;
	private String password;

	public UserLogin() {
		// TODO Auto-generated constructor stub
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
	
	public void prompt(){
		System.out.println("-----Login-----");
		Scanner mx = new Scanner(System.in);
		System.out.println("Username:");
		setUsername(mx.nextLine());
		System.out.println("Password:");
		setPassword(mx.nextLine());
	}

	@Override
	public String createQuerry() {
		// TODO Auto-generated method stub
		return "Call User_login("+"'"+username+"'"+","+"'"+password+"'"+")";
	}

	@Override
	public boolean checkIfNull() {
		// TODO Auto-generated method stub
		return (username==null||password==null);
	}
}
