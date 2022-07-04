package service.customer.impl;

import model.customer.Customer;
import repository.customer.ICustomerRepository;
import repository.customer.impl.CustomerRepository;
import service.customer.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository iCustomerRepository=new CustomerRepository();
    @Override
    public List<Customer> findAll() {
        return iCustomerRepository.findAll();
    }
}
