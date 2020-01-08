package ltd.ygao.service;

import ltd.ygao.pojo.Paper;
import org.springframework.stereotype.Service;

import java.util.List;

public interface PaperService {
    int addPaper(Paper paper);
    int deletePaperById(long id);
    int updatePaper(Paper paper);
    Paper queryById(long id);
    List<Paper> queryAllPaper();
}

