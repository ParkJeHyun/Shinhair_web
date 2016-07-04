package kr.shin.server.daoimpls;

import kr.shin.server.artifacts.Query;
import kr.shin.server.artifacts.WorkSchedule;
import kr.shin.server.daos.WorkScheduleDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2016-06-19.
 */
@Repository("WorkScheduleDao")
public class WorkScheduleDaoImpl implements WorkScheduleDao {
    @Autowired
    private SqlSession sqlSession;

    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }

    @Override
    public List<WorkSchedule> getWorkSchedule(Query query) {
        List<WorkSchedule> list = sqlSession.selectList("getWorkSchedule",query);

        return list;
    }

    @Override
    public WorkSchedule getWorkSchedule(Integer key) {
        return null;
    }

    @Override
    public void addWorkSchedule(WorkSchedule workSchedule) {

    }

    @Override
    public void modifyWorkSchedule(WorkSchedule workSchedule) {

    }
}
