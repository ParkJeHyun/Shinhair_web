package kr.shin.server.controller;

import kr.shin.server.artifacts.User;
import kr.shin.server.daos.UserDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016-06-10.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Resource(name="UserDao")
    private UserDao userDao;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String getAllUser(Model model) {

        model.addAttribute("users", userDao.getUserList());

        return "/user/users";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getUser(@PathVariable("id") Integer id, Model model) {

        model.addAttribute("user", userDao.getUser(id));

        return "/user/user";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(User user, Model model) {
        User result = userDao.login(user.getId(), user.getPassword());

        if(result == null) {
            return "/user/login_fail";
        }
        else {
            return "/user/login_success";
        }
    }

    @RequestMapping(value = "/signin",method = RequestMethod.GET)
    public String form()
    {
        return "user/signin";
    }

    @RequestMapping(value = "/signin",method = RequestMethod.POST)
    public String submit(@ModelAttribute User user,
                         @RequestParam(value = "uphone1",defaultValue = "") String ph1,
                         @RequestParam(value = "uphone2",defaultValue = "") String ph2,
                         @RequestParam(value = "uphone3",defaultValue = "") String ph3
    )
    {
        user.setPhone(ph1+ph2+ph3);
        user.setGrade(1);
//        System.out.println(user.getId());
//        System.out.println(user.getName());
//        System.out.println(user.getPassword());
//        System.out.println(user.getPhone());
        userDao.addUser(user);
        return "user/signin";
    }

    @RequestMapping(value = "/signin/dupliecateId", method = RequestMethod.GET)
    public String duplicateId(String id, Model model) {
        Boolean flag = userDao.isDulicateId(id);

        model.addAttribute("flag",flag);

        return "user/duplicatedId";
    }

    @RequestMapping(value = "/delete/{key}", method = RequestMethod.DELETE)
    public String deleteUser(@PathVariable("key") Integer key) {
        User removeUser = userDao.getUser(key);
        userDao.deleteUser(removeUser);

        return "/user/delete";
    }

    /**
     * jquery plugin에서 get으로 던져주고 있음,
     * @param id
     * @return
     */
    @RequestMapping(value = "/checkID")
    public Boolean duplicate(@RequestParam(value = "id") String id) {
        Boolean duplication = userDao.isDulicateId(id);
        return duplication;
    }
}
