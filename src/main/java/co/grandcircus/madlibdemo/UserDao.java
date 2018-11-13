package co.grandcircus.madlibdemo;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	@Autowired
	public void create(User user) {
		String sql = "INSERT INTO Users (firstName, lastName, username, password) "
				+ "VALUES (?, ?, ?, ?)";
		update(sql, user.getFirstName(), user.getLastName(), 
				user.getUsername(), user.getPassword());
	}

}
