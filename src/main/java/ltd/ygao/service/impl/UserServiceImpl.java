package ltd.ygao.service.impl;

import jdk.nashorn.internal.ir.RuntimeNode;
import ltd.ygao.dao.UserDao;
import ltd.ygao.pojo.User;
import ltd.ygao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Kevin
 * @version 1.0
 * @date 2020/2/25 13:08
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;
    @Override
    public User findUserByName(String username) {
        System.out.println("来到service实现类"+username);
        return userDao.getUserByName(username);
    }
}
