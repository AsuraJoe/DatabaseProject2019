
package minecraft;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
public class Demo {

	public static void main (String[] args)  {
		DataView view = null;
		SQLConnector connection = new SQLConnector();
		User currUser = new User();
		String userStr = null;
		McQuerry querry = new CreateUser();
		querry.prompt();
		if(!querry.checkIfNull()) {
			execute(connection, querry.createQuerry());
			System.out.println("Account created successfully");
		}
		querry = new UserLogin();
		querry.prompt();
		userStr = execute2User(connection, querry.createQuerry());
		while(userStr==null) {
			System.out.println("Unable to find a user with that username and password");
			querry.prompt();
			userStr = execute2User(connection, querry.createQuerry());
		}
		currUser.setFromString(userStr);
		
		if(currUser.isMod()) {
			System.out.println("Hello MOD "+currUser.getName()+"!!!!");
			view = new ModView(connection);
			while (view!=null) {
				view=view.display();
			}
		}
		else if(currUser.isUser()){
			System.out.println("Hello user "+currUser.getName()+"!!");
			view = new UserView(connection);
			while (view!=null) {
				view=view.display();
			}
		}
		}  
	
	public static void execute (SQLConnector connection, String querry) {
		Connection con = null;
		Statement stmt = null;
		try{  
			con=DriverManager.getConnection(  
			connection.connect(),connection.fetchUser(),connection.fetchPassword());  
			stmt=con.createStatement();  
			stmt.executeQuery(querry);  
			}catch(Exception e){ e.printStackTrace();}  
		    finally {
				try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
				try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
			}
	}
	
	public static String execute2User(SQLConnector connection, String querry) {
		Connection con = null;
		ResultSet rs = null;
		Statement stmt = null;
		String user = null;
		try{  
			con=DriverManager.getConnection(  
			connection.connect(),connection.fetchUser(),connection.fetchPassword());  
			stmt=con.createStatement();  
			rs=stmt.executeQuery(querry);  
			while(rs.next()) 
			user =(rs.getString("username") + " " + rs.getString("email")+" "+rs.getInt("moderator"));  
			con.close();  
			}catch(Exception e){ e.printStackTrace();}  
		    finally {
				try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
				try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
				try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
			}
		return user;
	}
}



