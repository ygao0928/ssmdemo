package ltd.ygao.dao;

import ltd.ygao.pojo.Paper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface PaperDao {
    int addPaper(Paper paper);
    int deletePaper(long id);
    int updatePaper(Paper paper);
    Paper queryById(long id);
    List<Paper> queryAllPaper();
}
