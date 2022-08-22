package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.UserDao;
import entity.User;
import service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
    @Autowired
    UserDao userDao;
    public User findUser(String Name,String Password) {
    	User user=this.userDao.findUser(Name,Password);
    	return user;
    }
    public String insertUser(User user) {
		int i = userDao.insertUser(user);
		String message="";
		if(i>0) {
			message="注册成功";
		}else {
			message="注册失败";
		}
		System.out.print(message);
		return message;
    }
}
