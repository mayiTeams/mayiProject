package online.qsx.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_user")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private Long id;
	private String username;
	private String password;
	private String balance;
	private String email;
	private String phone;
	private String address;
	private short sex;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}

	public short getSex() {
		return sex;
	}

	public void setSex(short sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public User(Long id, String username, String password, String balance) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.balance = balance;
	}

	public User(Long id, String username, String password, String balance, short sex) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.balance = balance;
		this.sex = sex;
	}

	public User(String username, String password, String balance, short sex) {
		super();
		this.username = username;
		this.password = password;
		this.balance = balance;
		this.sex = sex;
	}

	public User(String username, String password, String balance) {
		super();
		this.username = username;
		this.password = password;
		this.balance = balance;
	}

	public User(Long id) {
		super();
		this.id = id;
	}

	public User() {
		super();
	}

	public User(Long id, String balance) {
		super();
		this.id = id;
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", balance=" + balance
				+ ", sex=" + sex + "]";
	}

}
