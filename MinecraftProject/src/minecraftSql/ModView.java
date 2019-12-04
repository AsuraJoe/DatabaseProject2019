package minecraftSql;

import java.util.Scanner;

public class ModView implements View {

	public ModView() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public View display() {
		// TODO Auto-generated method stub
		Integer x = null;
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
		System.out.println("-----Menu-----");
		System.out.println("1-Grant User Mod rights");
		System.out.println("2-View tables");
		
	}
	
	public View getView(int n ) {
		switch(n) {
		case 1: return new UserGrantView();
		case 2: return new UserView(1);
		case 3: break;
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
	public View reset() {
		// TODO Auto-generated method stub
		return null;
	}

}
