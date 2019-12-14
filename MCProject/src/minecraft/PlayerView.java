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
		menu();
		Scanner mx = new Scanner(System.in);
		return getView(mx.nextLine());
	}

	@Override
	public void render() {
		// TODO Auto-generated method stub
	}


	@Override
	public void menu() {
		// TODO Auto-generated method stub
		if(mod==1) {
			System.out.println("1-Add Player");
			System.out.println("2-Remove Player");
			System.out.println("3-View Player's Inventory");
			System.out.println("4-Return to menu");
		}
		else 
			System.out.println("Do you want to return to the menu? (y for yes)");
		
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		this.attrs = new String[]{"username","health","hunger"};
		this.querry = ("select * from player");
		this.procs = new String[] {"Add_player","delete_player"};
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		if(mod==1) {
			Scanner mx = new Scanner(System.in);
			switch(n) {
			case "1":{
				System.out.println("Please enter your new player name:");
				String proc="Call "+procs[0]+"("+"'"+mx.nextLine()+"'"+")";
				execute(proc);
				return new PlayerView(mod,connection);
			}
			case "2":{
				String proc="Call "+procs[1]+"('";
				System.out.println("Please enter the name of the player you want to delete:");
				proc+=(mx.nextLine());
				proc+="');";
				execute(proc);
				return new PlayerView(mod,connection);
			}
			case "3": {
				System.out.println("Please enter the username you want to view inventory with");
				return new Inventory(mod,mx.nextLine(), connection);
			}
			case "4": return reset();
			default: break;
			}
		}
		else {
			switch(n) {
			case "y": return reset();
			default: break;
			}
		}
		System.out.println("Program ended");
		return null;
	}


}
