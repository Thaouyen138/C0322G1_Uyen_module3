package repository.customer.itf;

import model.customer.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> findAll();

    void delete(String id);

    void create(Customer customer);

    void edit(Customer customer);

    Customer findById(String id);

    List<Customer> findByField(String name, int customerTypeId);
}
