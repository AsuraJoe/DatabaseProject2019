package minecraft;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;
import java.sql.SQLException;

public class ItemView extends DataView {
	
	public ItemView() {
		// TODO Auto-generated constructor stub
		preLoad();
	}
	
	public ItemView(SQLConnector con) {
		preLoad();
		this.connection = con;
	}
	
	public ItemView(int m) {
		// TODO Auto-generated constructor stub
		preLoad();
		this.mod=m;
	}
	
	public ItemView(int m,SQLConnector con) {
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
			System.out.println("1-Add Item");
			System.out.println("2-Remove Item");
			System.out.println("3-Check instances of an item ");
			System.out.println("4-Return to menu");
		}
		else {
			System.out.println("1-Check instances of an item ");
			System.out.println("2-Return to menu");
		}
		
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		this.attrs=new String[]{"item_id","item_name","max_stack","placeable","instances_count"};
		this.querry = ("select * from item ");
		this.procs = new String[]{"Add_item","delete_item"};
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		Scanner mx = new Scanner(System.in);
		if(mod==1) {
			switch(n) {
			case "1":{
				String proc="Call "+procs[0]+"(";
				for (int i=0; i<attrs.length-1;i++) {
					if(i==attrs.length-2) {
						System.out.println("Please enter the new item's " +attrs[i]+" (0 for false, 1 for true)"+":");
						proc+=(mx.nextLine());
					}
					else if (i==1) {
						System.out.println("Please enter the new item's " +attrs[i]+" (0 for false, 1 for true)"+":");
						proc+=("'"+mx.nextLine()+"',");
					}
					else {
						System.out.println("Please enter the new item's " +attrs[i]+":");
						proc+=(mx.nextLine()+",");
					}
				}
				proc+=");";
				execute(proc);
				return new ItemView(mod,connection);
			}
			case "2":{
				String proc="Call "+procs[1]+"(";
						System.out.println("Please enter the item_id for deletion");
						proc+=(mx.nextLine());
				proc+=");";
				execute(proc);
				return new ItemView(mod,connection);
			}
			case "3": {
				System.out.println("Please enter the item_id you want to see instances for");
				return new InstancesOfItemsView(mod,Integer.parseInt(mx.nextLine()), connection);
			}
			case "4": return reset();
			default: break;
			};
		}
		else {
			switch(n) {
			case "2": {
				return reset();
			}
			default: break;
			};
		}
		System.out.println("Program ended");
		return null;
	}
}
