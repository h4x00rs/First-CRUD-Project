package service.impl;

import beans.UserBean;
import dao.UserDAO;
import entities.User;
import service.EntityBeanConverter;
import service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDao;

    @Autowired
    private EntityBeanConverter converter;

    @Override
    public Iterable<UserBean> getAllUsers() {
        Iterable<User> users = userDao.findAll();
        List<UserBean> beanList = converter.convertToBeanList(users, UserBean.class);

        return beanList;
    }

    @Override
    public UserBean getUserById(Integer userId) {
        Optional<User> user = userDao.findById(userId);
        UserBean bean = converter.convertToBean(user, UserBean.class);

        return bean;
    }

    @Override
    public void saveUser(UserBean user) {
        User userEntity = converter.convertToEntity(user, User.class);
        userDao.save(userEntity);
    }

    @Override
    public void deleteUser(Integer userId) {
        userDao.deleteById(userId);
    }
}
