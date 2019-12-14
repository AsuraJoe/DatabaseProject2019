package minecraft;

import java.util.Scanner;

public class BlockDrops extends DataView {

	public BlockDrops() {
		// TODO Auto-generated constructor stub
		preLoad();
	}

	public BlockDrops(int m) {
		preLoad();
		this.mod =m;
	}
	
	public BlockDrops(int m, SQLConnector con) {
		preLoad();
		this.mod =m;
		this.connection = con;
	} 
	
	public BlockDrops(SQLConnector con) {
		preLoad();
		this.connection = con;
	} 

	@Override
	public DataView display() {
		// TODO Auto-generated method stub
		for (int i=0; i<attrs.length;i++) 
			System.out.printf("%25s-", attrs[i]);
		System.out.println();
		exec();
		System.out.println("return to Menu?(y for yes)");
		Scanner mx = new Scanner(System.in);
		if(mx.nextLine().equals("y"))
			return reset();
		return getView(mx.nextLine());
	}

	@Override
	public void render() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void menu() {
		// TODO Auto-generated method stub
		if(mod == 1) {
			System.out.println("1-Add Entity Drops");
			System.out.println("2-Remove Entity Drops");
			System.out.println("3-Return to menu");
		}
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		this.attrs = new String[]{"block_id","item_id"};
		this.querry = ("select * from block_drops");
		this.procs = new String[] {};
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		Scanner mx = new Scanner(System.in);
		if(mod ==1) {
			switch(n) {
			case "1":{
				String proc="Call "+procs[0]+"('";
				System.out.println("Please enter the id of your entity");
				proc+=(mx.nextLine());
				System.out.println("Please enter the id of your item");
				proc+=(mx.nextLine());
		        proc+="');";
		        execute(proc);
				return new BlockDrops(mod,connection);
			}
			case "2": {
				String proc="Call "+procs[1]+"('";
				System.out.println("Please enter the name of your new biome");
				proc+=(mx.nextLine());
		        proc+="');";
		        execute(proc);
				return new BlockDrops(mod,connection);
				
			}
			case "3": {
				return reset();
			}
			} 
		}
		else {
			
		}
		System.out.println("Program ended");
		return null;
	}


}
