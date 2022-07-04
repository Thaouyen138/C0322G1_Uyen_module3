package repository.customer.impl;

import model.customer.Customer;
import repository.customer.BaseRepository;
import repository.customer.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    List<Customer> customerList = new ArrayList<>();
    private final String SELECT = "SELECT * FROM customer";

    @Override
    public List<Customer> findAll() {
        Connection connection = new BaseRepository().getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            Customer customer = null;
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int customerTypeId = resultSet.getInt("customer_type_id");
                String name = resultSet.getString("name");
                String dateOfBirth = resultSet.getString("date_of_birth");
                int gender = resultSet.getInt("gender");
                String idCard = resultSet.getString("id_card");
                String phoneNumber = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int statusDelete = resultSet.getInt("status_delete");
                customer = new Customer(id, customerTypeId, name, dateOfBirth, gender, idCard, phoneNumber, email, address, statusDelete);
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }
}















