package service;

import model.Product;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class ProductServicesImpl implements  IProductService{
    static Map<Integer, Product> productMap =new LinkedHashMap<>();
    static {
        productMap.put(1,new Product(1,"iphone X", 1500.0,"new","apple"));
        productMap.put(2,new Product(2,"iphone X", 1300.0,"99%","apple"));
        productMap.put(3,new Product(3,"iphone 12 Promax", 3300.0,"new","apple"));
        productMap.put(4,new Product(4,"samsung galaxy note 8", 2500.0,"new","androi"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void insertOne(Product product) {
        productMap.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }

    @Override
    public Product upDate(int id, Product product) {
        return productMap.put(id,product);
    }

    @Override
    public void remove(Integer id) {
        productMap.remove(id);
    }
}
