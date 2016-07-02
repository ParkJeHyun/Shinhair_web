package kr.shin.server.daos;

import kr.shin.server.artifacts.Query;
import kr.shin.server.artifacts.WorkSchedule;

import java.util.List;

/**
 * Created by Administrator on 2016-06-10.
 */
public interface WorkScheduleDao {
    List<WorkSchedule> getWorkSchedule(Query query);
    WorkSchedule getWorkSchedule(Integer key);

    void addWorkSchedule(WorkSchedule workSchedule);
    void modifyWorkSchedule(WorkSchedule workSchedule);
}
