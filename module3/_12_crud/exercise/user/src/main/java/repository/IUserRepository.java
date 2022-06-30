package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    List<User> findAll();

    void create(User user);

    void edit();

    List<User> findByName(String name);

    void delete(int id);
}
