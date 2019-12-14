package minecraft;

import java.util.Scanner;

public class EntityDrops extends DataView {

	public EntityDrops() {
		// TODO Auto-generated constructor stub
		preLoad();
	}

	public EntityDrops(int m) {
		preLoad();
		this.mod =m;
	}
	
	public EntityDrops(int m, SQLConnector con) {
		preLoad();
		this.mod =m;
		this.connection = con;
	} 
	
	public EntityDrops(SQLConnector con) {
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
		if(mod == 1) {
			System.out.println("1-Add Entity Drops");
			System.out.println("2-Remove Entity Drops");
			System.out.println("3-Return to menu");
		}
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		this.attrs = new String[]{"entity_id","entity_name","item_id","item_name"};
		this.querry = ("select c.entity_id, c.item_id,e.entity_name, b.item_name \r\n" + 
				"from entity e inner join entity_drops c on (c.entity_id = e.entity_id)inner join item b on (c.item_id = b.item_id)");
		this.procs = new String[] {};
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		if(mod ==1) {
			switch(n) {
			case "1":{
				return new EntityDrops(mod,connection);
			}
			case "2": {
				return new EntityDrops(mod,connection);
				
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
