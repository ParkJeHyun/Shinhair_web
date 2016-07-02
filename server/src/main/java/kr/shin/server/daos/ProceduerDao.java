package kr.shin.server.daos;

import kr.shin.server.artifacts.Procedure;

import java.util.List;

/**
 * Created by Administrator on 2016-06-10.
 */
public interface ProceduerDao {
    List<Procedure> getProceDuer();
    Procedure getProceDuer(Integer key);
    void addProceDuer(Procedure procedure);
    void modifyProceDuer(Procedure procedure);
}
