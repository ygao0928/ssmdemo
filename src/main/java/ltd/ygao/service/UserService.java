package ltd.ygao.service;

import ltd.ygao.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

/**
 * @author Kevin
 * @version 1.0
 * @date 2020/2/25 13:05
 */

public interface UserService {
    User findUserByName(@Param(value = "username") String  username);

}
