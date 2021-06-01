package model;

public class Product {
    private int idPr;
    private String nameProduct;
    private double pricePr;
    private String descriptionPr;
    private String producerPr;

    public Product() {
    }

    public Product(int idPr, String nameProduct, double pricePr, String descriptionPr, String producerPr) {
        this.idPr = idPr;
        this.nameProduct = nameProduct;
        this.pricePr = pricePr;
        this.descriptionPr = descriptionPr;
        this.producerPr = producerPr;
    }

    public int getIdPr() {
        return idPr;
    }

    public void setIdPr(int idPr) {
        this.idPr = idPr;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public double getPricePr() {
        return pricePr;
    }

    public void setPricePr(double pricePr) {
        this.pricePr = pricePr;
    }

    public String getDescriptionPr() {
        return descriptionPr;
    }

    public void setDescriptionPr(String descriptionPr) {
        this.descriptionPr = descriptionPr;
    }

    public String getProducerPr() {
        return producerPr;
    }

    public void setProducerPr(String producerPr) {
        this.producerPr = producerPr;
    }
}
