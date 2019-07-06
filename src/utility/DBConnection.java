package utility;
import java.sql.DriverManager;
import java.sql.Connection;
public class DBConnection {
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test2", "root","root");		
		}
		catch (Exception e) {
		}
		return con;
	}
}
