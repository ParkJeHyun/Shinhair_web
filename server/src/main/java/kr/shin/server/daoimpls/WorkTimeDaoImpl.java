package kr.shin.server.daoimpls;

import kr.shin.server.artifacts.WorkTime;
import kr.shin.server.daos.WorkTimeDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2016-06-19.
 */
@Repository("WorkTimeDao")
public class WorkTimeDaoImpl implements WorkTimeDao {
    @Autowired
    private SqlSession sqlSession;

    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }

    @Override
    public List<WorkTime> getWorkTime() {
        return sqlSession.selectList("getWorkTimeList");
    }

    @Override
    public WorkTime getWorkTime(Integer key) {
        return sqlSession.selectOne("getWorkTime",key);
    }

    @Override
    public Integer addWorkTime(WorkTime workTime) {
        return sqlSession.insert("addWorkTime", workTime);
    }

    @Override
    public Integer modifyWorkTime(WorkTime workTime) {
        return sqlSession.update("modifyWorkTime", workTime);
    }

    @Override
    public Integer removeWorkTime(Integer key) {
        return sqlSession.delete("removeWorkTime",key);
    }
}
