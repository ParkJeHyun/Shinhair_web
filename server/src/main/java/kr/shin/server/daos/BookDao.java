package kr.shin.server.daos;

import kr.shin.server.artifacts.Book;

import java.util.List;

/**
 * Created by Administrator on 2016-06-01.
 */
public interface BookDao {
    List<Book> selectAllBook();

    String selectBookName(Integer id);
}
