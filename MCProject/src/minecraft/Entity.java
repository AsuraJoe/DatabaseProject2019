package minecraft;

import java.util.Scanner;

public class Entity extends DataView {

	public Entity(int m,SQLConnector con) {
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
		System.out.println("1-Create entity");
		System.out.println("2-Delete Entity");
		System.out.println("3-Insert a new instance");
		System.out.println("4-Return to menu");
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		this.attrs=new String[]{"entity_id","entity_name"};
		this.querry = ("select * from entity ");
		this.procs = new String[]{"Add_entity","delete_entity","Add_entity_instance",""};
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		Scanner mx = new Scanner(System.in);
		switch(n) {
		case "1":{
		String proc="Call "+procs[0]+"(";
		System.out.println("Please enter the entity id"+":");
		proc+=(mx.nextLine()+",");
		System.out.println("Please enter the entity name"+":");
		proc+=("'"+mx.nextLine()+"',");
		System.out.println("Is is a mob(0 for false, 1 for true)"+":");
		proc+=(mx.nextLine());
		proc+=");";
		execute(proc);
		return new Entity(mod,connection);
		}
		case "2":{
			System.out.println("Please enter id of your chosen entity to remove");
			String proc="Call "+procs[1]+"("+mx.nextLine()+")";
			execute(proc);
			return new Entity(mod,connection);
		}
		case "3": {
			System.out.println("Please enter id to generate instance");
			String proc="Call "+procs[2]+"("+mx.nextLine()+")";
			execute(proc);
			return new Entity(mod,connection);
		}
		case "4": return reset();
		default: break;
		}
		System.out.println("Program ended");
		return null;
	}

}
