package repository.customer;

import model.customer.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> findAll();
}
