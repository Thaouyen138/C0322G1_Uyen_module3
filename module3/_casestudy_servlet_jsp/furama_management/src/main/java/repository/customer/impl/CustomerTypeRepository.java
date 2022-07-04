package repository.customer.impl;

import model.customer.CustomerType;
import repository.customer.BaseRepository;
import repository.customer.ICustomerTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerTypeRepository implements ICustomerTypeRepository {
    List<CustomerType> customerTypeList = new ArrayList<>();
    private final String SELECT = "SELECT * FROM customer_type";

    @Override
    public List<CustomerType> findAll() {
        Connection connection = new BaseRepository().getConnection();
        CustomerType customerType = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                customerType = new CustomerType(id, name);
                customerTypeList.add(customerType);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerTypeList;
    }
}
