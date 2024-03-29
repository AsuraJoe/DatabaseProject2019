package minecraft;

import java.util.Scanner;

public class Inventory extends DataView{
	private String username;
	
	public Inventory(int m, String id, SQLConnector con) {
		// TODO Auto-generated constructor stub
		this.mod=m;
		this.username=id;
		this.connection=con;
		preLoad();
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

			System.out.println("1-Add Item to slot");
			System.out.println("2-Remove Item from slot");
			System.out.println("3-Return to menu");
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		this.attrs = new String[] {"slot","instance_number","item_name","stack"};
		this.querry = "call view_inventory('"+this.username+"')";
		this.procs = new String[] {"inventory_insert","inventory_remove"};
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		Scanner mx = new Scanner(System.in);
			switch(n) {
			case "1":{
				System.out.println("Please enter the instance of Item you want to add:");
				String proc="Call "+procs[0]+"("+mx.nextLine()+",'"+username+"')";
				execute(proc);
				return new Inventory(mod,username,connection);
			}
			case "2":{
				String proc="Call "+procs[1]+"(";
				System.out.println("Please enter the instance_number of Item for deletion");
				proc+=(mx.nextLine());
				proc+=");";
				System.out.println(proc);
				execute(proc);
				return new Inventory(mod,username,connection);
			}
			case "3": return reset();
			default: break;
			}
		System.out.println("Program ended");
		return null;
	}

}
