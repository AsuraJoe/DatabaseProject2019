package minecraft;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;
import java.sql.SQLException;

public class BlockView extends DataView {
	public BlockView() {
		// TODO Auto-generated constructor stub
		preLoad();
	}

	public BlockView(int m) {
		preLoad();
		this.mod =m;
	}
	
	public BlockView(int m, SQLConnector con) {
		preLoad();
		this.mod =m;
		this.connection = con;
	} 
	
	public BlockView(SQLConnector con) {
		preLoad();
		this.connection = con;
	} 
	@Override
	public DataView display() {
		// TODO Auto-generated method stub
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
		this.attrs = new String[]{"block_id","block_name","transparent","gravity"};
		this.querry = ("select * from block ");
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		return null;
	}

}
