package ltd.ygao.dao;

import ltd.ygao.pojo.Paper;

import java.util.List;

public interface PaperDao {
    int addPaper(Paper paper);
    int deletePaper(long id);
    int updatePaper(Paper paper);
    Paper queryById(long id);
    List<Paper> queryAllPaper();
}
