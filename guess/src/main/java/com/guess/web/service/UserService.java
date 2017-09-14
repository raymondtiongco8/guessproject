package com.guess.web.service;

import java.util.List;

import com.guess.web.entity.User;

public interface UserService {

	public List<User> getUsers();

	public void saveUser(User theUser);

	public User getUser(int theUser);

	public void deleteUser(int theUser);
	
}
