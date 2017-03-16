package com.arif.crud.service;

import com.arif.crud.model.User;

import java.util.List;

/**
 * Created by user on 3/7/2017.
 */
public interface UserService {

    User findById(Long Id);
    User findByName(String Name);
    void saveUser(User user);
    void updateUser(User user);
    void deleteUserById(Long Id);
    void deleteAllUser();

    List<User> findAllUser();

    boolean isUserExist(User user);



}
