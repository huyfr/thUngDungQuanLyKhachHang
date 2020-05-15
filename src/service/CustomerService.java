package service;

import model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findAll();

    public abstract void save(Customer customer);

    Customer findById(int id);

    public abstract void update(int id, Customer customer);

    public abstract void remove(int id);

}
