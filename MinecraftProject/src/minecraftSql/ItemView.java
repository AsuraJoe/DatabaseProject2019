package minecraftSql;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;
import java.sql.SQLException;

public class ItemView extends View {
	
	public ItemView() {
		// TODO Auto-generated constructor stub
		this.attrs=new String[]{"item_id","item_name","max_stack",};
		this.querry = ("select * from item ");
	}
	
	public ItemView(SQLConnector con) {
		this.attrs=new String[]{"item_id","item_name","max_stack",};
		this.querry = ("select * from item ");
		this.connection = con;
	}
	
	public ItemView(int m) {
		// TODO Auto-generated constructor stub
		this.attrs=new String[]{"item_id","item_name","max_stack",};
		this.querry = ("select * from item ");
		this.mod=m;
	}
	
	public ItemView(int m,SQLConnector con) {
		// TODO Auto-generated constructor stub
		this.attrs=new String[]{"item_id","item_name","max_stack",};
		this.querry = ("select * from item ");
		this.mod=m;
		this.connection=con;
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

	
}
