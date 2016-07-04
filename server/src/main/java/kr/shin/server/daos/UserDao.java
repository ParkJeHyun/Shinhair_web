package kr.shin.server.daos;

import kr.shin.server.artifacts.User;

import java.util.List;

/**
 * Created by Administrator on 2016-06-10.
 */
public interface UserDao {
    List<User> getUserList();
    User getUser(Integer key);

    User login(String id, String password);

    Boolean isDulicateId(String id);
    void addUser(User user);
    void modifyUser(User user);
    void deleteUser(User user);
}
