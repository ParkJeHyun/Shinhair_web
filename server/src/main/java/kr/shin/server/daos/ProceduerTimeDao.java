package kr.shin.server.daos;

import kr.shin.server.artifacts.ProcedureTime;

import java.util.List;

/**
 * Created by Administrator on 2016-06-10.
 */
public interface ProceduerTimeDao {
    List<ProcedureTime> getProceduerTime();
    ProcedureTime getProceduerTime(Integer key);
    void addProceduerTime(ProcedureTime procedureTime);
    void modifyProcedureTime(ProcedureTime procedureTime);
}
