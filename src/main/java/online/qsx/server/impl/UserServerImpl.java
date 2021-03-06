﻿package online.qsx.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online.qsx.dao.impl.UserDaoImpl;
import online.qsx.model.Log;
import online.qsx.model.User;

@Service
public class UserServerImpl {
	@Autowired
	private UserDaoImpl userDaoImpl;

	/**
	 * 获取所有用户
	 */
	public List<User> getUsers() {
		return userDaoImpl.getUsers();
	}

	/**
	 * 用户注册
	 * 
	 * @param user
	 */
	public void saveUser(User user) {
		List<User> list = userDaoImpl.getUsers();
		for (User us : list) {
			if (us.getUsername().trim().equals(user.getUsername())
					&& us.getPassword().trim().equals(user.getPassword())) {

			}
		}
		userDaoImpl.saveUser(user);
	}

	/**
	 * 登录验证
	 */
	public String login(User user) {

		List<User> list = userDaoImpl.getUsers();

		for (User us : list) {
			if (us.getUsername().trim().equals(user.getUsername())
					&& us.getPassword().trim().equals(user.getPassword())) {
				return "true";
			}
		}
		return "false";
	}

	/**
	 * 获取当前登录用户信息
	 */
	public User getUser(User user) {
		List<User> list = userDaoImpl.getUsers();
		for (User us : list) {
			if (us.getUsername().trim().equals(user.getUsername())
					&& us.getPassword().trim().equals(user.getPassword())) {
				return us;
			}
		}
		return null;
	}

	/**
	 * 充值
	 */
	public void rechage(User user, String balance) {
		Double getBalance = Double.parseDouble(user.getBalance());
		System.out.println("充入的钱：" + getBalance);
		Double accoutnBalnce = Double.parseDouble(balance);
		System.out.println("账户的钱" + accoutnBalnce);
		Double allBalance = accoutnBalnce + getBalance;
		System.out.println("总的钱：" + allBalance);
		String allBalance01 = Double.toString(allBalance);
		userDaoImpl.updateBalance(user, allBalance01);
		userDaoImpl.saveLog1(user, getBalance, accoutnBalnce, allBalance01);
	}

	/**
	 * 提现
	 */
	public void withdrow(User user, String balance) {
		Double getBalance = Double.parseDouble(user.getBalance());
		System.out.println("提现的钱：" + getBalance);
		Double accoutnBalnce = Double.parseDouble(balance);
		System.out.println("账户的钱" + accoutnBalnce);
		if (accoutnBalnce > getBalance) {
			Double allBalance = accoutnBalnce - getBalance;
			System.out.println("剩余的钱：" + allBalance);
			String allBalance01 = Double.toString(allBalance);
			userDaoImpl.updateBalance(user, allBalance01);
			userDaoImpl.saveLog2(user, getBalance, accoutnBalnce, allBalance01);
		} else {
			userDaoImpl.updateBalance(user, balance);
		}

	}

	/**
	 * 获取当前用户的余额
	 */
	public String getUserBlance(User user) {
		List<User> list = userDaoImpl.getUsers();
		for (User us : list) {
			if (us.getUsername().trim().equals(user.getUsername())
					&& us.getPassword().trim().equals(user.getPassword())) {
				return us.getBalance();
			}
		}
		return null;
	}

	/**
	 * 获取当前用户的余额
	 */
	public String getUserPassword(User user) {
		List<User> list = userDaoImpl.getUsers();
		for (User us : list) {
			if (us.getUsername().trim().equals(user.getUsername())
					&& us.getPassword().trim().equals(user.getPassword())) {
				return us.getPassword();
			}
		}
		return null;
	}

	/**
	 * 修改密码
	 */

	public void passWord(User user) {

		userDaoImpl.passWord(user);

	}

	public void edit(User user) {
		userDaoImpl.edit(user);
	}

	/**
	 * 注册
	 * 
	 * @return
	 */
	public int register(User user) {
		List<User> list = userDaoImpl.getUsers();
		for (User us : list) {
			if (us.getUsername().trim().equals(user.getUsername())) {
				System.out.println("用户已存在！");
				return -1;
			} else {
				userDaoImpl.register(user);
			}
		}
		return 0;
	}

	/**
	 * 支付单
	 */
	public int payment(User user) {
		// 将数据库中的所有的数据放到list中
		List<User> list = userDaoImpl.getUsers();
		// 对list进行遍历
		for (User us : list) {
			if (us.getUsername().trim().equals(user.getUsername())
					&& us.getPassword().trim().equals(user.getPassword())) {
				Double paymentMoneyone = Double.parseDouble(user.getBalance());
				System.err.println("转账金额为：" + user.getBalance());
				System.err.println(user.getBalance());
				System.out.println(us.getBalance());
				System.out.println(user.getUsername());
				Double allBalance = Double.parseDouble(us.getBalance());
				System.err.println("账户金额：" + allBalance);
				while (allBalance >= paymentMoneyone) {
					Double remainBalance = allBalance - paymentMoneyone;
					System.out.println(remainBalance);
					String allBalance01 = Double.toString(remainBalance);
					userDaoImpl.payment(user, remainBalance);
					break;
				}
				break;
			} else {
				System.out.println("用户不存在！");
				break;
			}
		}
		return 0;
	}

	/**
	 * @param log
	 * @return
	 */
	public List<Log> foundLog(Log log) {
		return userDaoImpl.getLogs();
	}
}
