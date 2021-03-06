package br.com.cofrinho.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.cofrinho.dao.UserDAO;
import br.com.cofrinho.model.Team;
import br.com.cofrinho.model.User;
import br.com.cofrinho.model.UserType;

@Service
@Transactional
public class UserService {
	
	@Autowired
	private UserDAO userDAO;

	public void addUser(User user) {
		userDAO.addUser(user);		
	}

	public void updateUser(User user) {
		userDAO.updateUser(user);
	}

	public User getUser(int userId) {
		return userDAO.getUser(userId);
	}

	public void deleteUser(int userId) {
		userDAO.deleteUser(userId);
	}

	public List<User> getUsers() {
		return userDAO.getUsers();
	}
	
	public List<Team> getTeams() {
		return userDAO.getTeams();
	}

	public List<UserType> getUserTypes() {
		return userDAO.getUserTypes();
	}
	
	public User checkUser(User user){
		List<User> list = userDAO.checkUser(user);
		return iterateList(list);
	}
	private User iterateList(List<User> list) {
		User userReturn = new User();
		if(list.size()!=0)
		for (User user : list) {
			userReturn = user;
		}
		else
			userReturn = null;
		return userReturn;
		
	}
	
}
