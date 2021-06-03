package service;

import dao.IProductDAO;
import dao.ProductDAO;
import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {

    private IProductDAO productDAO = new ProductDAO();

    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public void save(Product product) {
        productDAO.save(product);
    }

    @Override
    public Product findById(int id) {
        return productDAO.findById(id);
    }

    @Override
    public void update(int id, Product product) {
        productDAO.update(id, product);
    }

    @Override
    public void remove(int id) {
        productDAO.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        return productDAO.findByName(name);
    }


}
