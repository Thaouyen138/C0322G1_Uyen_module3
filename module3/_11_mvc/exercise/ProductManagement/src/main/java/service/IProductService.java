package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();
    void insertOne(Product product);
    Product findById(int id);
    Product upDate(int id, Product product);
    void remove(Integer id);
}
