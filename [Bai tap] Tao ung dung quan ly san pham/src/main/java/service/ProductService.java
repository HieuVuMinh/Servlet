package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService{

    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(0, "Car", 2000.0, "Black", "H"));
        productList.add(new Product(1, "Bike", 500.0, "Pink", "G"));
        productList.add(new Product(2, "Motor", 1000.0, "Orange", "D"));
        productList.add(new Product(3, "Plane", 15000.0, "Black", "A"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productList);
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public Product findById(int id) {
        return productList.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productList.set(id, product);
    }

    @Override
    public void remove(int id) {
        productList.remove(id);
    }
}
