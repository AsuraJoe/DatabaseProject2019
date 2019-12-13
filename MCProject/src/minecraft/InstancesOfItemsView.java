package minecraft;

import java.util.Scanner;

public class InstancesOfItemsView extends DataView{
	private int item_id;
	
	public InstancesOfItemsView(int m, int id, SQLConnector con) {
		// TODO Auto-generated constructor stub
		this.mod=m;
		this.item_id=id;
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
		if(mod==1) {
			System.out.println("1-Add instance");
			System.out.println("2-Remove Instance");
			System.out.println("3-Enchant an Item");
			System.out.println("4-Return to menu");
		}
		else {
			System.out.println("1-Add instance");
			System.out.println("2-Return to menu");
		}
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		this.attrs = new String[] {"instance_number","stack","item_id","item_name","enchant_count"};
		this.querry = "call get_instanceOf_Item("+this.item_id+")";
		this.procs = new String[] {"Add_item_instance","delete_item_instance"};
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		Scanner mx = new Scanner(System.in);
		if(mod==1) {
			switch(n) {
			case "1":{
				System.out.println("Please enter the stack of your instance:");
				String proc="Call "+procs[0]+"("+mx.nextLine()+","+item_id+")";
				execute(proc);
				return new InstancesOfItemsView(mod,item_id,connection);
			}
			case "2":{
				String proc="Call "+procs[1]+"(";
				System.out.println("Please enter the instance_number for deletion");
				proc+=(mx.nextLine());
				proc+=");";
				System.out.println(proc);
				execute(proc);
				return new InstancesOfItemsView(mod,item_id,connection);
			}
			case "4": return reset();
			default: break;
			}
		}
		else {
			
			switch(n) {
			case "1":{
				System.out.println("Please enter the stack of your instance:");
				String proc="Call "+procs[0]+"("+mx.nextLine()+","+item_id+")";
				execute(proc);
				return new InstancesOfItemsView(mod,item_id,connection);
			}
			case "2": return reset();
			default: break;
			}
		}
		System.out.println("Program ended");
		return null;
	}

}
