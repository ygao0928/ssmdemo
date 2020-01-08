package ltd.ygao.dao;

import ltd.ygao.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @author Kevin
 * @version 1.0
 * @date 2020/2/25 13:44
 */
@Mapper
public interface UserDao {
    User getUserByName(@Param("username") String username);
}
