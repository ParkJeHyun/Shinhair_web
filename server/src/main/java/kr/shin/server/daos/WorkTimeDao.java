package kr.shin.server.daos;

import kr.shin.server.artifacts.WorkTime;

import java.util.List;

/**
 * Created by Administrator on 2016-06-10.
 */
public interface WorkTimeDao {
    List<WorkTime> getWorkTime();
    WorkTime getWorkTime(Integer key);

    Integer addWorkTime(WorkTime workTime);
    Integer modifyWorkTime(WorkTime workTime);
    Integer removeWorkTime(Integer key);
}
