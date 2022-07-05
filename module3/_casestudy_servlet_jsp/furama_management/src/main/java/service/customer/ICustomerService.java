package service.customer;

import model.customer.Customer;

import java.util.Currency;
import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();

    void delete(String id);

    void create(Customer customer);

    void edit(Customer customer);

    Customer findById(String id);

    List<Customer> findByField(String name, int customerTypeId);
}
