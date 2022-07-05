package repository.impl;

//import model.User;

import model.User;
import repository.BaseRepository;
import repository.IUserRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepositoryImpl implements IUserRepository {
    List<User> userList = new ArrayList<>();
    private static final String SELECT = "Select * from users where  status_delete = 0";
    private static final String INSERT = "insert into users(name,email,country, type_id,status_delete) values (?,?,?,?,?)";
    private static final String FIND_BY_NAME_OR_COUNTRY = "select * from users where name like ? and country like ? and status_delete = 0";
    private static final String FIND_BY_ID = "select * from users where id = ? and status_delete = 0";

    //database
    @Override
    public List<User> findAll() {
        userList.clear();
        try {
            Connection connection = new BaseRepository().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            User user = null;
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                int typeId = resultSet.getInt("type_id");
                int statusDelete = resultSet.getInt("status_delete");
                user = new User(id, name, email, country, typeId,statusDelete);
                userList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }

    @Override
    public void create(User user) {
        Connection connection = new BaseRepository().getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            preparedStatement.setInt(4,user.getTypeId());
            preparedStatement.setInt(5,0);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void edit(User user) {
        String update="update users set name= ? ," +
                " email = ?, type_id = ?, country = ?, type_id = ? where id = ?";
        Connection connection = new BaseRepository().getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(update);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            preparedStatement.setInt(4,user.getTypeId());
            preparedStatement.setInt(5,user.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<User> findByName(String nameS , String countryS) {
        userList.clear();
        Connection connection = new BaseRepository().getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_NAME_OR_COUNTRY);
            preparedStatement.setString(1, "%" + nameS + "%");
            preparedStatement.setString(2, "%" + countryS + "%");
            ResultSet resultSet = preparedStatement.executeQuery();
            User user = null;
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                int typeId = resultSet.getInt("type_id");
                int delete=resultSet.getInt("status_delete");
                user = new User(id, name, email, country, typeId, delete);
                userList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }

    @Override
    public void delete(int id) {
        String delete="update users set status_delete = 1 where id=?";
        Connection connection=new BaseRepository().getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(delete);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public User findById(int idS) {
        userList.clear();
        User user = null;
        try {
            Connection connection = new BaseRepository().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1,idS);
            ResultSet resultSet = preparedStatement.executeQuery();
      resultSet.next();
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                int typeId= resultSet.getInt("type_id");
                int statusDelete = resultSet.getInt("status_delete");
                user = new User(id, name, email, country, typeId,statusDelete);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }
}
