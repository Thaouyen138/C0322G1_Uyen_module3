package repository.impl;

import model.TypeUser;
import repository.BaseRepository;
import repository.ITypeUserRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeUserRepository implements ITypeUserRepository {
    @Override
    public List<TypeUser> findAll() {
        String findAll = "SELECT  * from type_user";
        List<TypeUser> typeUserList = new ArrayList<>();
        Connection connection = new BaseRepository().getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(findAll);
            ResultSet resultSet = preparedStatement.executeQuery();
            TypeUser typeUser = null;
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String type = resultSet.getString("type");
                typeUser=new TypeUser(id,type);
                typeUserList.add(typeUser);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return typeUserList;
    }
}
