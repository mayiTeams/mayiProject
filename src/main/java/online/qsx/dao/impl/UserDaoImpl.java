package online.qsx.dao.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import online.qsx.common.BaseDao;
import online.qsx.model.Log;
import online.qsx.model.User;

@Repository
public class UserDaoImpl {
	@Autowired
	private BaseDao baseDao;

	@SuppressWarnings({ "unchecked" })
	public List<User> getUsers() {
		return (List<User>) baseDao.getHibernateTemplate().find("from User");
	}

	public void saveUser(User user) {
		baseDao.getHibernateTemplate().save(new User(user.getUsername(), user.getPassword(), user.getBalance()));

	}

	public void saveUserInfo(User user) {
		baseDao.getHibernateTemplate()
				.save(new User(user.getUsername(), user.getPassword(), user.getBalance(), user.getSex()));

	}

	public User getUser(User user) {
		return baseDao.getHibernateTemplate().get(User.class, user.getId());
	}

	public void updateBalance(User user,String balance) {
		baseDao.getHibernateTemplate().saveOrUpdate(new User(user.getId(), user.getUsername(), user.getPassword(), balance));
		
	}

	public void saveLog1(User user, Double getBalance, Double accoutnBalnce, String allBalance01) {
		baseDao.getHibernateTemplate().save(new Log(new Date(),"借入",getBalance,0D,allBalance01));
	}
	
	public void saveLog2(User user, Double getBalance, Double accoutnBalnce, String allBalance01) {
		baseDao.getHibernateTemplate().save(new Log(new Date(),"借出",0D,getBalance,allBalance01));
	}

	public void passWord(User user) {
		//带id修改 不带只是保存
		baseDao.getHibernateTemplate().saveOrUpdate(new User(user.getId(), user.getUsername(), user.getPassword(),user.getBalance()));
		
	}

	public void edit(User user) {
		baseDao.getHibernateTemplate().saveOrUpdate(user);
	}

	public void updateUserInfo(User user) {
		baseDao.getHibernateTemplate().saveOrUpdate(user);
	}

	/**
	 * 注册
	 */
	public void register(User user) {
		baseDao.getHibernateTemplate().save(user);
	}

	/**
	 * 支付单
	 */
	public void payment(User user) {
		baseDao.getHibernateTemplate().save(user);
	}

	/**
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Log> getLogs() {
		return (List<Log>) baseDao.getHibernateTemplate().find("from Log");
	}

	

}
