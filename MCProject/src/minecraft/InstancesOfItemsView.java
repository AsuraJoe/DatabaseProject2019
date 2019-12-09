package minecraft;

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
		this.attrs = new String[] {"instance_number","stack","item_id","item_name"};
		this.querry = "call get_instanceOf_Item("+this.item_id+")";
	}

	@Override
	public DataView getView(String n) {
		// TODO Auto-generated method stub
		return null;
	}

}
