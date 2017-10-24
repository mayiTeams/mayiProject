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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "t_log")
public class Log {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "log_id")
	private Long id;

	@Temporal(TemporalType.DATE)
	private Date createdate;

	private String project;
	private Double income;
	private Double outcome;
	private String allbalance;

	// 特殊属性 log
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "tb_temp", // 中间表的表名
			joinColumns = { @JoinColumn(name = "log_id") // 关联列
			}, inverseJoinColumns = { @JoinColumn(name = "user_id") // 其他列
			})
	private Set<User> users = new HashSet<User>();
	

	public String getAllbalance() {
		return allbalance;
	}

	public void setAllbalance(String allbalance) {
		this.allbalance = allbalance;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public Log() {
		super();
	}

	public Log(Long id) {
		super();
		this.id = id;
	}

	public Log(Date createdate, String project, Double income, Double outcome,String allbalance) {
		super();
		this.createdate = createdate;
		this.project = project;
		this.income = income;
		this.outcome = outcome;
		this.allbalance = allbalance;
	}

	public Log(Long id, Date createdate, String project, Double income, Double outcome,String allbalance) {
		super();
		this.id = id;
		this.createdate = createdate;
		this.project = project;
		this.income = income;
		this.outcome = outcome;
		this.allbalance = allbalance;
	}

	@Override
	public String toString() {
		return "Log [id=" + id + ", createdate=" + createdate + ", project=" + project + ", income=" + income
				+ ", outcome=" + outcome + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public Double getIncome() {
		return income;
	}

	public void setIncome(Double income) {
		this.income = income;
	}

	public Double getOutcome() {
		return outcome;
	}

	public void setOutcome(Double outcome) {
		this.outcome = outcome;
	}
}
