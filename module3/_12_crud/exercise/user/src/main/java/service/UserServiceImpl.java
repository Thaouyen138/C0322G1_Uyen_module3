package service;

import model.User;
import repository.IUserRepository;
import repository.UserRepositoryImpl;

import java.util.List;

public class UserServiceImpl implements IUserService{
   private IUserRepository userRepository=new UserRepositoryImpl();
    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public void create(User user) {
        userRepository.create(user);
    }

    @Override
    public void edit(User user) {
        userRepository.edit(user);
    }

    @Override
    public User findById(int id) {
        return userRepository.findById(id);
    }

    @Override
    public List<User> findByName(String name , String country) {

        return userRepository.findByName(name , country);
    }

    @Override
    public void delete(int id) {
        userRepository.delete(id);
    }


}
