package minecraft;

import java.util.Scanner;

public class UserView extends DataView{
	

	public UserView() {
		// TODO Auto-generated constructor stub
		this.mod=0;
	}
	
	public UserView(SQLConnector con) {
		this.mod=0;
		this.connection = con;
	}
	
	public UserView(int m) {
		// TODO Auto-generated constructor stub
		this.mod = m;
	}
	
	@Override
	public void render() {
		// TODO Auto-generated method stub
		
	}

	public UserView(int m, SQLConnector con) {
		// TODO Auto-generated constructor stub
		this.mod = m;
		this.connection =  con;
	}
	
	@Override
	public DataView display() {
		// TODO Auto-generated method stub
		String x= null;
		menu();
		Scanner mx = new Scanner(System.in);
		System.out.println("Please choose one of the options:");
		x= mx.nextLine();
		if (x!=null)
			return getView(x);
		return null;
	}

	@Override
	public void exec() {
		// TODO Auto-generated method stub
	}
	
	public DataView getView( String n){
		switch(n) {
		case "1": return new ItemView(mod,connection);
		case "2": return new PlayerView(mod,connection);
		case "3": return new BlockView(mod,connection);
		case "4": return new Entity(mod,connection);
		case "5": return new Mob(mod,connection);
		default: break;
		}
		System.out.println("Program end.");
		return null;
	}

	@Override
	public DataView reset() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void menu() {
		// TODO Auto-generated method stub
		System.out.println("Choose an item: ");
		System.out.println("1-items");
		System.out.println("2-players");
		System.out.println("3-blocks");
		System.out.println("4-entities");
		System.out.println("5-mobs");
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		
	}

}
