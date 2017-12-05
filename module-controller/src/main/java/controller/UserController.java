package controller;

import beans.UserBean;
import service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/users.html")
    public ModelAndView showUsersPage() {
        ModelAndView modelAndView = new ModelAndView("users");
        return modelAndView;
    }

    @RequestMapping("/update-user.html")
    public ModelAndView updateUser(@RequestParam(name = "user_id") Integer userId) {
        ModelAndView modelAndView = new ModelAndView("users");

        UserBean user = userService.getUserById(userId);
        modelAndView.addObject("user", user);

        return modelAndView;
    }

    @RequestMapping("/delete-user.html")
    public ModelAndView deleteUser(@RequestParam(name = "user_id") Integer userId) {
        userService.deleteUser(userId);

        ModelAndView modelAndView = new ModelAndView("redirect:users.html");
        return modelAndView;
    }

    @RequestMapping(value = "/save-user.html", method = RequestMethod.POST)
    public ModelAndView saveUser(UserBean user) {
        userService.saveUser(user);

        ModelAndView modelAndView = new ModelAndView("redirect:users.html");
        return modelAndView;
    }

    @ModelAttribute(name = "userList")
    private Iterable<UserBean> getUserList() {
        Iterable<UserBean> userList = userService.getAllUsers();
        return userList;
    }

    @ModelAttribute(name = "user")
    private UserBean getEmptyUser() {
        return new UserBean();
    }
}
