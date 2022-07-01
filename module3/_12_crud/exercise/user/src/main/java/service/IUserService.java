package service;


import model.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();

    void create(User user);

    void edit(User user);

    User findById(int id);

    List<User> findByName(String name ,String country);

    void delete(int id);



}
