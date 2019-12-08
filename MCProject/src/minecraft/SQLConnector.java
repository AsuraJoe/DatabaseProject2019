package minecraft;
public class SQLConnector {
	private String server = "localhost:3306";
	private String database ="minecraft";
	private String user = "root";
	private String password ="Juugojuu2!%!@!((*";
	

	public SQLConnector() {
		// TODO Auto-generated constructor stub
	}

	public SQLConnector(String server, String database, String user, String password) {
		this.database = database;
		this.server = server;
		this.user = user;
		this.password = password;
	}
	
	public String connect() {
		return "jdbc:mysql://"+server+"/"+database +"?serverTimezone=EST"; 
	}
	
	public String fetchUser() {
		return user;
	}
	
	public String fetchPassword() {
		return password;
	}
}
