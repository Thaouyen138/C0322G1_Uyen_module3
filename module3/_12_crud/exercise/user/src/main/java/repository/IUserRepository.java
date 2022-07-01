package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    List<User> findAll();

    void create(User user);

    void edit(User user);

    List<User> findByName(String name, String country);

    void delete(int id);



    User findById(int id);

}
