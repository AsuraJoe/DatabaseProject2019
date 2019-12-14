package minecraft;

import java.util.Scanner;

public class Biome extends DataView {

	public Biome() {
		// TODO Auto-generated constructor stub
		preLoad();
	}

	public Biome(int m) {
		preLoad();
		this.mod =m;
	}
	
	public Biome(int m, SQLConnector con) {
		preLoad();
		this.mod =m;
		this.connection = con;
	} 
	
	public Biome(SQLConnector con) {
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
			System.out.println("1-Add Biome");
			System.out.println("2-Remove Biome");
			System.out.println("3-Return to menu");
		}
	}

	@Override
	public void preLoad() {
		// TODO Auto-generated method stub
		this.attrs = new String[]{"name"};
		this.querry = ("select * from biome");
		this.procs = new String[] {};
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		if(mod ==1) {
			switch(n) {
			case "1":{
				return new Biome(mod,connection);
			}
			case "2": {
				return new Biome(mod,connection);
				
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
