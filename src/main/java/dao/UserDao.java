package dao;

import org.apache.ibatis.annotations.Param;
import entity.User;

public interface UserDao {
    public User findUser(@Param("Name") String Name,
                         @Param("Password") String Password);

    int insertUser(User user);
}
