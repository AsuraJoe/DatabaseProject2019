package minecraft;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;
import java.sql.SQLException;


public class UserGrantView extends View {
	
	public UserGrantView() {
		// TODO Auto-generated constructor stub
		this.attrs=new String[]{"user_id","username","email","moderator"};
		this.querry = ("select * from user ");
	}
	
	public UserGrantView(SQLConnector con) {
		this.attrs=new String[]{"user_id","username","email","moderator"};
		this.querry = ("select * from user ");
		this.connection = con;
	}

	@Override
	public View display() {
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
			execute(x);
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
	
	public void execute(int index) {
		Connection con = null;
		Statement stmt = null;
		try{  
			con=DriverManager.getConnection(  
			connection.connect(),connection.fetchUser(),connection.fetchPassword());  
			stmt=con.createStatement();  
			stmt.executeQuery(createQuerry(index));   
			}catch(Exception e){ e.printStackTrace();}  
		    finally {
				try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
				try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
			}
	}
	@Override
	public View reset() {
		return new ModView(connection);
		
	}
	
	public String createQuerry (int index) {
		return "Call grant_mod_rights("+index+")";
	}

}
