package minecraftSql;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;
import java.sql.SQLException;

public class PlayerView implements View {
	SQLConnector connection = new SQLConnector();
	String [] attrs= {"instance_number","username","health","hunger"};
	String querry = ("select * from player");
	private int mod =0;
	public PlayerView() {
		// TODO Auto-generated constructor stub
	}

	public PlayerView(int mod2) {
		// TODO Auto-generated constructor stub
		this.mod= mod2;
	}

	@Override
	public View display() {
		// TODO Auto-generated method stub
		for (int i=0; i<attrs.length;i++) 
			System.out.printf("%15s-", attrs[i]);
		System.out.println();
		exec();
		Scanner mx = new Scanner(System.in);
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
	public void exec() {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try{  
			con=DriverManager.getConnection(  
			connection.connect(),connection.fetchUser(),connection.fetchPassword());  
			stmt=con.createStatement();  
			stmt.executeQuery(querry);  
			rs= stmt.getResultSet();
			while(rs.next()) {
				for (int i =0; i<attrs.length; i++) {
					System.out.printf("%15s ",rs.getString(attrs[i]));
				}
				System.out.println();
			}
			System.out.println();
			}catch(Exception e){ e.printStackTrace();}  
		    finally {
				try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
				try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
			}
	}

	@Override
	public View reset() {
		// TODO Auto-generated method stub
		if (mod==1)
			return new ModView();
		else if (mod==0)
			return new UserView();
		return null;
	}

}