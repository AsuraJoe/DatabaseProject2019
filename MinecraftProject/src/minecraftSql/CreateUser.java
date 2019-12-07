package minecraftSql;

import java.util.Scanner;

public class CreateUser implements McQuerry {
	private String username;
	private String password;
	private String email;
	public CreateUser() {
		// TODO Auto-generated constructor stub
	}	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String createQuerry() {
		// TODO Auto-generated method stub
		return "Call Add_user("+"'"+username+"'"+","+"'"+password+"'"+","+"'"+email+"'"+")";
	}
	@Override
	public void prompt() {
		// TODO Auto-generated method stub
		Scanner mx = new Scanner(System.in);
		System.out.println("Do you want to create a new account(Type Y for yes)");
		if(mx.nextLine().toLowerCase().equals("y")) {
			System.out.println("-----Register-----");
			while(checkIfNull()) {
				System.out.println("Email");
				setEmail(mx.nextLine());
				System.out.println("New Username:");
				setUsername(mx.nextLine());
				System.out.println("New Password:");
				setPassword(mx.nextLine());
			}
		}
	}
	@Override
	public boolean checkIfNull() {
		// TODO Auto-generated method stub
		return (username==null||email==null||password==null);
	}

}
