package com.guess.web.dao;

import java.util.List;

import com.guess.web.entity.User;

public interface UserDAO {
	
	public List<User> getUsers();

	public void saveUser(User theUser);

	public User getUser(int theId);

	public void deleteUser(int theId);
	
}
