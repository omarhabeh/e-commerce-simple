package hib;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User")
public class HibControl {
	
	@Override
	public String toString() {
		return "HibControl [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", phoneNumber="
				+ phoneNumber + ", Address=" + Address + "]";
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY )
	@Column(updatable = false, nullable = false)
	private int id ;
	@Column(name="FirstName")
	private String fname;
	@Column(name="LastName")
	private String lname;
	@Column(name="Email")
	private String email;
	@Column(name="PhoneNumber")
	private int phoneNumber;
	@Column(name="Address")
	private String Address;
	private String City;
	private String Country;
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public HibControl(int id,String name,String lname,String email,int phoneNumber,String Address,String City,String country) {
		this.id=id;
		this.fname=name;
		this.lname=lname;
		this.email=email;
		this.phoneNumber=phoneNumber;
		this.Address=Address;
		this.City=City;
		this.Country=country;
	}
	public HibControl(){
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public int getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	

}
