package service;
import java.util.ArrayList;
import org.springframework.transaction.annotation.Transactional;
import dao.BaseDao;
import entity.User;

@Transactional
public class UserService {

	private BaseDao baseDao;
	ArrayList<User> ulist=null;
	private String sql=null;
	User user=null;
	
	//用户登录
	public boolean login(User user) {
		sql="FROM User where userName=? and password=?";
		String[] params= {user.getUserName(),user.getPassword()};
		ulist= (ArrayList<User>)baseDao.getData(sql, params);
		if(ulist.size()>0) {
			return true;
		}
		return false;
	}	
	
	//获取全部用户集合
	public ArrayList<User> getUserList(){
		String[] params= {};
		sql="FROM User";
		ulist=(ArrayList<User>)baseDao.getData(sql,params);
		if(ulist.size()>0) {
			return ulist;
		}
		return null;
	}
	
	//获取单个用户信息
	public User getUser(int id) {
		user=(User)baseDao.getById(User.class, id);
		return user;
	}
	
	//删除用户信息
	public boolean delete(int id) {
		user=(User)baseDao.getById(User.class, id);//获取删除的用户的实例
		if(baseDao.delete(user)) {
			return true;
		}
		return false;
	}
	
	//修改用户信息
	public boolean update(User user) {
		if(baseDao.update(user)) {
			return true;
		}
		return false;
	}

	public BaseDao getBaseDao() {
		return baseDao;
	}
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
}
