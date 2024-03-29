package minecraft;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public abstract class DataView {
	
	protected SQLConnector connection = new SQLConnector();
	protected String querry;
	protected String [] attrs;
	protected String [] procs;
	protected String [] opts;
	protected int mod;
	
	
	public abstract DataView display();
	public abstract void render();
	public abstract void menu();
	public abstract void preLoad();
	public abstract DataView getView(String n);
	
	public void execute ( String querry) {
		Connection con = null;
		Statement stmt = null;
		try{  
			con=DriverManager.getConnection(  
			connection.connect(),connection.fetchUser(),connection.fetchPassword());  
			stmt=con.createStatement();  
			stmt.executeQuery(querry);  
			}catch(Exception e){ e.printStackTrace();}  
		    finally {
		    	System.out.println("Successfully Resolved");
				try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
				try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
			}
	}
	public void exec() {
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
					System.out.printf("%25s ",rs.getString(attrs[i]));
				}
				System.out.println();
			}
			System.out.println();
			}catch(Exception e){ e.printStackTrace();}  
		    finally {
				try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
				try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
				try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
			}
	};
	
	public DataView reset() {
		if (mod==1)
			return new ModView(connection);
		else if (mod==0)
			return new UserView(connection);
		return null;
	};
}
