package ltd.ygao.pojo;

import java.io.Serializable;

/**
 * @author Kevin
 * @version 1.0
 * @date 2020/2/25 13:06
 */
public class User implements Serializable {
    private Integer id;
    private  String username;
    private String pass;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", pass='" + pass + '\'' +
                '}';
    }

    public User() {
        super();
    }
}
