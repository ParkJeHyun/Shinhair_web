package kr.shin.server.daoimpls;

import kr.shin.server.artifacts.User;
import kr.shin.server.daos.UserDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2016-06-10.
 */
@Repository("UserDao")
public class UserDaoImpl implements UserDao{
    @Autowired
    private SqlSession sqlSession;

    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }

    @Override
    public List<User> getUserList() {
        List<User> users = sqlSession.selectList("getUserList");

        return users;
    }

    @Override
    public User getUser(Integer key) {
        User user = sqlSession.selectOne("getUser", key);

        return user;
    }

    @Override
    public User login(String id, String password) {
        User inUser = new User();
        inUser.setId(id);
        inUser.setPassword(password);
        User user = sqlSession.selectOne("login",inUser);

        return user;
    }

    @Override
    public Boolean isDulicateId(String id) {
        User user = sqlSession.selectOne("duplicateId",id);
        if(user != null){
            return true;
        }
        else {
            return false;
        }
    }

    @Override
    public void addUser(User user) {
        sqlSession.insert("insertUser", user);
    }

    @Override
    public void modifyUser(User user) {
    }

    @Override
    public void deleteUser(User user) {
        sqlSession.delete("deleteUser", user);
    }
}