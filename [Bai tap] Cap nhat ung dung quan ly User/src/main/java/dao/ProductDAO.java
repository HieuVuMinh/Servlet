package dao;

import model.Product;

import java.awt.geom.Area;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class ProductDAO implements IProductDAO{
    public static final String SELECT_ALL_PRODUCT = "select * from product";
    public static final String SELECT_PRODUCT_BY_ID = "select * from product where id = ?";
    public static final String INSERT_PRODUCT = "insert into product(name, pricePr, descriptionPr, producerPr) value (?, ?, ?, ?)";
    private static final String UPDATE_PRODUCT = "update product set name = ?, pricePr = ?, descriptionPr = ?, producerPr = ? where id = ?";
    private static final String DELETE_PRODUCT = "delete from product where id = ?";
    private static final String SELECT_PRODUCT_BY_NAME = "select * from product where name like ?";

    @Override
    public List<Product> findAll() {
        List<Product> productList = new ArrayList<>();
        Connection connection = SQLConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("pricePr");
                String description = resultSet.getString("descriptionPr");
                String producer = resultSet.getString("producerPr");
                productList.add(new Product(id,name,price,description,producer));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> productList = new ArrayList<>();
        Connection connection = SQLConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_NAME);
            preparedStatement.setString(1, "%" + name + "%" );
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String namePr = resultSet.getString("name");
                double price = resultSet.getDouble("pricePr");
                String description = resultSet.getString("descriptionPr");
                String producer = resultSet.getString("producerPr");
                productList.add(new Product(id,namePr,price,description,producer));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }

    @Override
    public Product findById(int id) {
        Product product = new Product();
        Connection connection = SQLConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_ID);
            preparedStatement.setInt(1, id );
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("pricePr");
                String description = resultSet.getString("descriptionPr");
                String producer = resultSet.getString("producerPr");
                product.setNameProduct(name);
                product.setPricePr(price);
                product.setDescriptionPr(description);
                product.setProducerPr(producer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }


    @Override
    public void save(Product product) {
        Connection connection = SQLConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCT);
            preparedStatement.setString(1, product.getNameProduct());
            preparedStatement.setDouble(2, product.getPricePr());
            preparedStatement.setString(3, product.getDescriptionPr());
            preparedStatement.setString(4, product.getProducerPr());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(int id, Product product) {
        Connection connection = SQLConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PRODUCT);
            preparedStatement.setString(1, product.getNameProduct());
            preparedStatement.setDouble(2, product.getPricePr());
            preparedStatement.setString(3, product.getDescriptionPr());
            preparedStatement.setString(4, product.getProducerPr());
            preparedStatement.setInt(5, product.getIdPr());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void remove(int id) {
    Connection connection = SQLConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_PRODUCT);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }




}
