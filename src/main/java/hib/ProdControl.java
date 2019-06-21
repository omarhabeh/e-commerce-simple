package hib;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class ProdControl {
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY )
	private int picId;
	private String picName;
	private String description;
	private String title;
	private String Path;
	private int price;
	
	ProdControl(){}
	public ProdControl(String pic,String path,String desc,String title,int price){
		this.picName=pic;
		this.description=desc;
		this.title=title;
		this.price=price;
		this.Path=path;
	}
	@Override
	public String toString() {
		return "ProdControl [picId=" + picId + ", picName=" + picName + ", description=" + description + ", title="
				+ title + ", Path=" + Path + ", price=" + price + "]";
	}
	public String getPicName() {
		return picName;
	}
	public void setPicName(String picName) {
		this.picName = picName;
	}
	public String getPath() {
		return Path;
	}
	public void setPath(String path) {
		Path = path;
	}
	
	 public int getPicId() {
			return picId;
		}
		public void setPicId(int picId) {
			this.picId = picId;
		}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}
