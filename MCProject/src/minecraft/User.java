package minecraft;

public class User {
	
	private String name;
	private String email;
	private int mod=141;
	
	public User() {}
	
	public User(String name, String email, int mod) {
		// TODO Auto-generated constructor stub
		setName(name);
		setEmail(email);
		setMod(mod);
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isMod() {
		return mod==1;
	}
	public int getMod() {
		return mod;
	}
	public boolean isUser() {
		return mod==0;
	}
	public void setMod(int mod) {
		this.mod = mod;
	}
	
	public void setFromString(String rs) {
		String[] attr = rs.split(" ");
		if(attr.length == 3) {
			setName(attr[0]);
			setEmail(attr[1]);
			setMod(Integer.parseInt(attr[2]));
		}
		else
			System.out.println("Unable to resolve user");
	}
	public boolean checkIfNull() {
		return (name==null||email==null||mod==141);
	}

}
