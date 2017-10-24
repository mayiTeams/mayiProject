package online.qsx.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="t_log")
public class Log {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="log_id")
	private Long id;
	
	@Temporal(TemporalType.DATE)
	private Date createdate;
	
	private String project;
	private Double income;
	private Double outcome;
	
	//特殊属性
	@ManyToOne(fetch = FetchType.EAGER, cascade = { CascadeType.ALL })
	@JoinColumn(name = "user_id")
	private User user;

	public Log() {
		super();
	}
	public Log(Long id) {
		super();
		this.id = id;
	}
	public Log(Date createdate, String project, Double income, Double outcome) {
		super();
		this.createdate = createdate;
		this.project = project;
		this.income = income;
		this.outcome = outcome;
	}
	public Log(Long id, Date createdate, String project, Double income, Double outcome) {
		super();
		this.id = id;
		this.createdate = createdate;
		this.project = project;
		this.income = income;
		this.outcome = outcome;
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
