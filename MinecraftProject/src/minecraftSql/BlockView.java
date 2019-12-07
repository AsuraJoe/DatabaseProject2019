package minecraftSql;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;
import java.sql.SQLException;

public class BlockView extends View {
	private int mod =0;
	
	public BlockView() {
		// TODO Auto-generated constructor stub
		this.attrs = new String[]{"block_id","block_name","transparent","gravity"};
		this.querry = ("select * from block ");
	}

	public BlockView(int m) {
		this.attrs = new String[]{"block_id","block_name","transparent","gravity"};
		this.querry = ("select * from block ");
		this.mod =m;
	}
	
	public BlockView(int m, SQLConnector con) {
		this.attrs = new String[]{"block_id","block_name","transparent","gravity"};
		this.querry = ("select * from block ");
		this.mod =m;
		this.connection = con;
	} 
	
	public BlockView(SQLConnector con) {
		this.attrs = new String[]{"block_id","block_name","transparent","gravity"};
		this.querry = ("select * from block ");
		this.connection = con;
	} 
	@Override
	public View display() {
		// TODO Auto-generated method stub
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

}
