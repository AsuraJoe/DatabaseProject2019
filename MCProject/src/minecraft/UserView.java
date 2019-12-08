package minecraft;

import java.util.Scanner;

public class UserView extends View{
	

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
	
	public UserView(int m, SQLConnector con) {
		// TODO Auto-generated constructor stub
		this.mod = m;
		this.connection =  con;
	}
	
	@Override
	public View display() {
		// TODO Auto-generated method stub
		Integer x= null;
		getMenu();
		Scanner mx = new Scanner(System.in);
		System.out.println("Please choose one of the options:");
		x= Integer.parseInt(mx.nextLine());
		if (x!=null)
			return getView(x);
		return null;
	}

	@Override
	public void render() {
		// TODO Auto-generated method stub
		
	}
	
	public void getMenu() {
		System.out.println("Choose an item: ");
		System.out.println("1-items");
		System.out.println("2-players");
		System.out.println("3-blocks");
	}

	@Override
	public void exec() {
		// TODO Auto-generated method stub
	}
	
	public View getView(int n){
		switch(n) {
		case 1: return new ItemView(mod,connection);
		case 2: return new PlayerView(mod,connection);
		case 3: return new BlockView(mod,connection);
		default: break;
		}
		
		return null;
	}

	@Override
	public View reset() {
		// TODO Auto-generated method stub
		return null;
	}

}
