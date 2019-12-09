package minecraft;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;
import java.sql.SQLException;

public class PlayerView extends DataView {
	public PlayerView(SQLConnector con) {
		// TODO Auto-generated constructor stub
		preLoad();
		this.connection= con;
	}
	
	public PlayerView() {
		// TODO Auto-generated constructor stub
		preLoad();
	}

	public PlayerView(int m, SQLConnector con) {
		// TODO Auto-generated constructor stub
		preLoad();
		this.mod = m;
		this.connection= con;
	}
	
	public PlayerView(int m) {
		// TODO Auto-generated constructor stub
		preLoad();
		this.mod = m;
	}

	@Override
	public DataView display() {
		// TODO Auto-generated method stub
		for (int i=0; i<attrs.length;i++) 
			System.out.printf("%25s-", attrs[i]);
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
	public void menu() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		this.attrs = new String[]{"instance_number","username","health","hunger"};
		this.querry = ("select * from player");
	}


}
