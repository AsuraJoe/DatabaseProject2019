package minecraft;

import java.util.Scanner;

public class ItemEnchantsView extends DataView {
	private int num;
	
	public ItemEnchantsView(int m, int id, SQLConnector con) {
		// TODO Auto-generated constructor stub
		this.mod=m;
		this.num=id;
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
		System.out.println("1-Add enchant to the chosen item");
		System.out.println("2-Remove Enchant");
		System.out.println("3-Return to menu");
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		this.attrs = new String[] {"enchantment_id","enchantment_name","max_level"};
		this.querry = "select * from enchantments";
		this.procs = new String[] {"Add_enchant","delete_enchant"};
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		Scanner mx = new Scanner(System.in);
		switch(n) {
		case "1":{
			String proc="Call "+procs[0]+"(";
			System.out.println("Please enter id of your chosen enchantment:");
			procs[0]+=mx.nextLine()+",";
			System.out.println("Please enter the chosen item instance:");
			procs[0]+=mx.nextLine()+",";
			System.out.println("Please enter the level of your enchantment:");
			procs[0]+=mx.nextLine();
			proc+=");";
			execute(proc);
			return new ItemEnchantsView(mod,num,connection);
		}
		case "2":{
			String proc="Call "+procs[1]+"(";
			System.out.println("Please enter the instance_number for deletion");
			proc+=(mx.nextLine());
			proc+=");";
			System.out.println(proc);
			execute(proc);
			return new ItemEnchantsView(mod,num,connection);
		}
		case "3": return reset();
		default: break;
		}
		
		System.out.println("Program ended");
		return null;
	}

}
