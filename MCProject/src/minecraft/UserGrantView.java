package minecraft;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;
import java.sql.SQLException;


public class UserGrantView extends DataView {
	protected String [] procs = {"grant_mod_rights"};
	
	public UserGrantView() {
		// TODO Auto-generated constructor stub
		preLoad();
	}
	
	public UserGrantView(SQLConnector con) {
		preLoad();
		this.connection = con;
	}

	@Override
	public DataView display() {
		// TODO Auto-generated method stub
		for (int i=0; i<attrs.length;i++) 
			System.out.printf("%25s-", attrs[i]);
		System.out.println();
		exec();
		Scanner mx = new Scanner(System.in);
		Integer x= null;
		System.out.println("Do you want to create grant moderator rights(Type Y for yes)");
		if(mx.nextLine().toLowerCase().equals("y")) {
			System.out.println("Enter the index you want to grant rights for:");
			x= Integer.parseInt(mx.nextLine());
			execute(createQuerry(procs[0],x));
			return display();
		}
		System.out.println("Do you want to continue back to the menu(Type Y for yes)");
		if(mx.nextLine().toLowerCase().equals("y")) 
			return reset();
		System.out.println("Program ended");
		return null;
	}

	@Override
	public void render() {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public DataView reset() {
		return new ModView(connection);
		
	}
	
	public String createQuerry (String proc, int index) {
		return "Call "+proc+"("+index+")";
	}

	@Override
	public void menu() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		this.attrs=new String[]{"user_id","username","email","moderator"};
		this.procs=new String[]{"grant_mod_rights"};
		this.querry = ("select * from user ");
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		return null;
	}

}
