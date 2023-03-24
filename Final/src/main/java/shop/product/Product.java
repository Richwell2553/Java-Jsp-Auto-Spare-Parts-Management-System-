package shop.product;

public class Product {
	private int productId;
	private String productName;
	
	private String productCategory;
	private double productCost;
	private int quantityAvailable;
	private int quantitySold;
	private int totalQuantity;
	private double totalWorth;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public int getQuantityAvailable() {
		return quantityAvailable;
	}
	public void setQuantityAvailable(int quantityAvailable) {
		this.quantityAvailable = quantityAvailable;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
//	public int getProductStock() {
//		return productStock;
//	}
//	public void setProductStock(int productStock) {
//		this.productStock = productStock;
//	}
	public double getProductCost() {
		return productCost;
	}
	public void setProductCost(double productCost) {
		this.productCost = productCost;
	}
	public int getQuantitySold() {
		return quantitySold;
	}
	public void setQuantitySold(int quantitySold) {
		this.quantitySold = quantitySold;
	}
	public int getTotalQuantity() {
		return totalQuantity;
	}
	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}
	public double getTotalWorth() {
		return totalWorth;
	}
	public void setTotalWorth(double totalWorth) {
		this.totalWorth = totalWorth;
	}
	
	
	

}
