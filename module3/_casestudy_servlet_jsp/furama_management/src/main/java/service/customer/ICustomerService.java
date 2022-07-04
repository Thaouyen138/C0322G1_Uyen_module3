package service.customer;

import model.customer.Customer;

import java.util.Currency;
import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();
}
