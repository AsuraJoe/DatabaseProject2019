package minecraft;

import java.util.Scanner;

public class ModView extends DataView {

	public ModView() {
		// TODO Auto-generated constructor stub
		this.mod = 1;
	}
	
	public ModView(SQLConnector con) {
		// TODO Auto-generated constructor stub
		this.mod = 1;
		this.connection = con;
	}

	@Override
	public DataView display() {
		// TODO Auto-generated method stub
		String x = null;
		menu();
		Scanner mx = new Scanner(System.in);
		System.out.println("Please choose one of the options:");
		x= mx.nextLine();
		if (x!=null)
			return getView(x);
		return null;
	}

	@Override
	public void render() {
		// TODO Auto-generated method stub

	}
	
	
	public DataView getView(String n ) {
		switch(n) {
		case "1": return new UserGrantView(connection);
		case "2": return new UserView(1,connection);
		default: break;
		}
		System.out.println("Program end.");
		
		return null;
	}

	@Override
	public void exec() {
		// TODO Auto-generated method stub

	}

	@Override
	public DataView reset() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void menu() {
		// TODO Auto-generated method stub
		System.out.println("-----Menu-----");
		System.out.println("1-Grant User Mod rights");
		System.out.println("2-View tables");
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		
	}

}
