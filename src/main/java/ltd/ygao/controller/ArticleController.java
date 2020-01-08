package ltd.ygao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Kevin
 * @version 1.0
 * @date 2020/3/7 13:22
 */
@Controller
@RequestMapping(value = "/admin/article")
public class ArticleController {
@RequestMapping(value ="/insert")
       public String index(Model model) {
    System.out.println("bula");
        return "admin/artices/addartice";
    }
}