package online.qsx.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
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
	@Column(columnDefinition = "varchar(250)default 0")
	private String balance;
	private String email;
	private String phone;
	private String address;
	private short sex;
	private Date date;
	private String remark;
	private Double paymentMoney;

	// 特殊属性 user
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "tb_temp", // 中间表的表名
			joinColumns = { @JoinColumn(name = "user_id") // 关联列
			}, inverseJoinColumns = { @JoinColumn(name = "log_id") // 其他列
			})
	private Set<Log> logs = new HashSet<Log>();

	public Set<Log> getLogs() {
		return logs;
	}

	public void setLogs(Set<Log> logs) {
		this.logs = logs;
	}

	public Date getDate() {
		return date;
	}

	public Double getPaymentMoney() {
		return paymentMoney;
	}

	public void setPaymentMoney(Double paymentMoney) {
		this.paymentMoney = paymentMoney;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

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

	public User(Long id, String username, String password, String balance, String email, String phone, String address,
			short sex, Date date, String remark, Double paymentMoney) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.balance = balance;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.sex = sex;
		this.date = date;
		this.remark = remark;
		this.paymentMoney = paymentMoney;
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

	public User(String username, String password, String balance, String email, String phone, String address, short sex,
			Date date, String remark, Double paymentMoney) {
		super();
		this.username = username;
		this.password = password;
		this.balance = balance;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.sex = sex;
		this.date = date;
		this.remark = remark;
		this.paymentMoney = paymentMoney;
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
				+ ", email=" + email + ", phone=" + phone + ", address=" + address + ", sex=" + sex + ", date=" + date
				+ ", remark=" + remark + "]";
	}

}
