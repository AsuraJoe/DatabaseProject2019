package minecraftSql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

public class ItemInstancesView implements View {
	private int itemId;

	public ItemInstancesView() {
		// TODO Auto-generated constructor stub
	}
	
	public ItemInstancesView (int qnum) {
		this.itemId = qnum;
	}

	@Override
	public View display() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void render() {
		// TODO Auto-generated method stub

	}
	

	@Override
	public void exec() {
		// TODO Auto-generated method stub

	}

	@Override
	public View reset() {
		// TODO Auto-generated method stub
		return null;
	}

}
