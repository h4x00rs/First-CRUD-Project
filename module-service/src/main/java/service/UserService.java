package service;

import beans.UserBean;

public interface UserService {

    Iterable<UserBean> getAllUsers();

    UserBean getUserById(Integer userId);

    void saveUser(UserBean user);

    void deleteUser(Integer userId);
}

