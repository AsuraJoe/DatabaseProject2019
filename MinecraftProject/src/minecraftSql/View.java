package minecraftSql;

public interface View {
	public View display();
	public void render();
	public void exec();
	public View reset();
}
