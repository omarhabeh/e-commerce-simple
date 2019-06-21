package hib;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Cart")

public class Cart {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY )
	private int id;
	private String prodName;
	private int prodQuan;
	private int price;
	public Cart(int id, String picName, int quan, int price) {
		this.id=id;
		this.prodName=picName;
		this.prodQuan=quan;
		this.price=price;
	}
	public Cart(){}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public int getProdQuan() {
		return prodQuan;
	}
	public void setProdQuan(int prodQuan) {
		this.prodQuan = prodQuan;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
