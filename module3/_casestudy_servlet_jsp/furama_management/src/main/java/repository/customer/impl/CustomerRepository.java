package repository.customer.impl;

import model.customer.Customer;
import repository.customer.BaseRepository;
import repository.customer.itf.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private final String SELECT = "SELECT * FROM customer where status_delete=0 order by date_of_birth";
    private static final String FIND_BY_FIELD = "select * from customer where name like ? and customer_type_id like ? and status_delete = 0";

    @Override
    public List<Customer> findAll() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = new BaseRepository().getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            Customer customer = null;
            while (resultSet.next()) {
                String id = resultSet.getString("id");
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

    private final String DELETE = "update customer set status_delete = 1 where id = ?";

    @Override
    public void delete(String id) {
        Connection connection = new BaseRepository().getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setString(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private final String INSERT = "INSERT INTO customer(id,customer_type_id,name,date_of_birth, gender,id_card,phone_number, email,address,status_delete)" +
            " values (?,?,?,?,?,?,?,?,?,?)";

    @Override
    public void create(Customer customer) {
        Connection connection = new BaseRepository().getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, customer.getId());
            preparedStatement.setInt(2, customer.getCustomerTypeId());
            preparedStatement.setString(3, customer.getName());
            preparedStatement.setString(4, customer.getDateOfBirth());
            preparedStatement.setInt(5, customer.getGender());
            preparedStatement.setString(6, customer.getIdCard());
            preparedStatement.setString(7, customer.getPhoneNumber());
            preparedStatement.setString(8, customer.getEmail());
            preparedStatement.setString(9, customer.getAddress());
            preparedStatement.setInt(10, 0);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private final String UPDATE = "UPDATE customer set customer_type_id = ? , " +
            "name = ? , date_of_birth = ? , gender = ? , id_card = ? , phone_number = ? , " +
            "email = ? , address = ? where id = ?";

    @Override
    public void edit(Customer customer) {
        Connection connection = new BaseRepository().getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setInt(1, customer.getCustomerTypeId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getDateOfBirth());
            preparedStatement.setInt(4, customer.getGender());
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhoneNumber());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setString(9, customer.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private static final String FIND_BY_ID = "select * from customer where id = ? and status_delete = 0";

    @Override
    public Customer findById(String idS) {
        Customer customer = null;
        try {
            Connection connection = new BaseRepository().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setString(1, idS);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            String id = resultSet.getString("id");
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
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customer;
    }

    @Override
    public List<Customer> findByField(String nameS, int customerTypeIdS) {
        Connection connection = new BaseRepository().getConnection();
        List<Customer> customerList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_FIELD);
            preparedStatement.setString(1, "%" + nameS + "%");
            preparedStatement.setInt(2, customerTypeIdS);
            ResultSet resultSet = preparedStatement.executeQuery();
            Customer customer = null;
            while (resultSet.next()) {
                String id = resultSet.getString("id");
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















