package minecraft;

import java.util.Scanner;

public class Mob extends DataView {

	public Mob(int m,SQLConnector con) {
		// TODO Auto-generated constructor stub
		preLoad();
		this.mod=m;
		this.connection=con;
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
		System.out.println("Do you want to return to menu (y for yes)");
		if(mx.nextLine().toLowerCase().equals("y"))
			return reset();
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
		this.attrs=new String[]{"instance_number","health"};
		this.querry = ("select * from mob ");
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		return null;
	}

}
