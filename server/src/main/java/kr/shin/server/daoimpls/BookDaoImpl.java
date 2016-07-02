package kr.shin.server.daoimpls;

import kr.shin.server.artifacts.Book;
import kr.shin.server.daos.BookDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2016-06-01.
 */
@Repository("BookDao")
public class BookDaoImpl implements BookDao {
    @Autowired
    private SqlSession sqlSession;

    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }

    @Override
    public List<Book> selectAllBook() {
        // TODO Auto-generated method stub
        List<Book> users = sqlSession.selectList("getBookInfo");

        return users;
    }

    @Override
    public String selectBookName(Integer id) {
        // TODO Auto-generated method stub
        String name = sqlSession.selectOne("getBookName", id);

        return name;
    }
}
