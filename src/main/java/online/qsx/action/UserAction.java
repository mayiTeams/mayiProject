package online.qsx.action;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import online.qsx.model.Log;
import online.qsx.model.User;
import online.qsx.server.impl.UserServerImpl;

@Component("userAction")
public class UserAction {
	@Autowired
	private UserServerImpl userServerImpl;
	private List<User> list;

	private User user;
	
	private List<Log> lists;
	private Log log;
	
	public List<Log> getLists() {
		return lists;
	}

	public void setLists(List<Log> lists) {
		this.lists = lists;
	}

	public Log getLog() {
		return log;
	}

	public void setLog(Log log) {
		this.log = log;
	}

	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

	/**
	 * 获取所有用户
	 * 
	 * @return
	 */
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * 得到所有用户的list
	 * 
	 * @return
	 */
	public String findUsers() {
		list = userServerImpl.getUsers();
		return "succeed";
	}

	public String save() {
		userServerImpl.saveUser(user);
		list = userServerImpl.getUsers();
		return "succeed";
	}

	public String none() {
		return "succeed";
	}

	public String skip() {
		return "succeed";
	}
   
	public String login() {
		String val = userServerImpl.login(user);
		if (val.equals("true")) {
			user = userServerImpl.getUser(user);
			System.out.println(user.getUsername());
			return "succeed";
		}
		return "false";
	}
   /**
    * 查询当前用户信息
    */
	public String getUserinfor(){
		user = userServerImpl.getUser(user);
		return "succeed";
	}
	
	/**
	 * 充值
	 * 
	 * @return
	 */
	public String recharge() {
		String balance = userServerImpl.getUserBlance(user);
		userServerImpl.rechage(user, balance);
		return "succeed";
	}

	/**
	 * 提现
	 */
	public String withdrow() {
		String balance = userServerImpl.getUserBlance(user);
		userServerImpl.withdrow(user, balance);
		return "succeed";
	}

	/**
	 * 改密
	 */
	public String passWord(){
		userServerImpl.passWord(user);
		return "succeed";
	}


	public String to_edit() {
		user=userServerImpl.getUser(user);
		return "update";
	}
	
	public String do_edit() {
		userServerImpl.edit(user);
		list = userServerImpl.getUsers();
		return "list";
	}

	/**
	 * 注册
	 */
	public String register() {
		int exist = userServerImpl.register(user);
		if (exist < 0) {
			return "false";
		} else {
			return "succeed";
		}
	}
	
	/**
	 * 支付单
	 * @return
	 */
	
	public String payment(){
		int inexistence = userServerImpl.payment(user);
		if(inexistence < 0){
			return "false";
		}else{
			return "succeed";
		}
	}
	/**
	 * 查找所有日志
	 * @return
	 */
	public String foundLog() {
		lists=userServerImpl.foundLog(log);
		return "lists";
	}
	
	/**
	 * 支付单详情
	 */
	public String info(){
		user = userServerImpl.getUser(user);
		return "info";
	}
}
