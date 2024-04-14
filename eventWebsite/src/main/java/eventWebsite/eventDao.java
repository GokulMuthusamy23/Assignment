package eventWebsite;
import java.sql.*;
import java.util.*;


public class eventDao {
      
	public List<event> getAllEvents(){
		List<event> events = new ArrayList<event>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eve","root","123456");
			PreparedStatement ps= con.prepareStatement("select*from events");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				event row = new event(null, null, null, null);
				row.setName(rs.getString("name"));
				row.setDate(rs.getString("date"));
				row.setPrice(rs.getString("price"));
				row.setImage(rs.getString("image"));
				events.add(row);
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		
		
		return events;
	}
	
}
