package ltd.ygao.controller;


import ltd.ygao.pojo.User;
import ltd.ygao.service.UserService;
import ltd.ygao.until.ReturnParam;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Kevin
 * @version 1.0
 * @date 2020/2/24 21:54
 */


@Controller
public class UserController {
    @Autowired(required = false)
    private UserService userService;

    @RequestMapping(value ="/login")
    public String loginPage() {
        return "login";
    }
    @RequestMapping(value ="/admin")
    public String index(Model model) {

        return "admin/index";
    }

    @RequestMapping(value = "/checklogin",produces = "text/html; charset=UTF-8")
    @ResponseBody
    public String checklogin(HttpServletRequest request, HttpServletResponse response) {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        System.out.println(userService);
        User user = userService.findUserByName(username);
        System.out.println(user);
        ReturnParam returnParam = new ReturnParam();
        if (user == null) {
            returnParam.setSuccess(false);
            returnParam.setMsg("用户名不存在");
        }if (!user.getPass().equals(password)){
            returnParam.setSuccess(false);
            returnParam.setMsg("密码不正确");
        }else{
            returnParam.setSuccess(true);
            returnParam.setMsg("登录成功");
             request.getSession().setAttribute("usId",user);


        }
        String result = new JSONObject(returnParam).toString();
        System.out.println(username + password);
        return result;
    }
}
