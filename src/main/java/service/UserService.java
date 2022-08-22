package service;

import entity.User;

public interface UserService {
    public User findUser(String Name, String Password);

    String insertUser(User user);
}
