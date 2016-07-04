package kr.shin.server.daos;

import kr.shin.server.artifacts.Designer;

import java.util.List;

/**
 * Created by Administrator on 2016-06-10.
 */
public interface DesignerDao {
    List<Designer> getDeginer();
    Designer getDeginer(Integer key);
    void addDeginer(Designer designer);
    void modifyDeginer(Designer designer);
}
