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
	
	//�û���¼
	public boolean login(User user) {
		sql="FROM User where userName=? and password=?";
		String[] params= {user.getUserName(),user.getPassword()};
		ulist= (ArrayList<User>)baseDao.getData(sql, params);
		if(ulist.size()>0) {
			return true;
		}
		return false;
	}	
	
	//��ȡȫ���û�����
	public ArrayList<User> getUserList(){
		String[] params= {};
		sql="FROM User";
		ulist=(ArrayList<User>)baseDao.getData(sql,params);
		if(ulist.size()>0) {
			return ulist;
		}
		return null;
	}
	
	//��ȡ�����û���Ϣ
	public User getUser(int id) {
		user=(User)baseDao.getById(User.class, id);
		return user;
	}
	
	//ɾ���û���Ϣ
	public boolean delete(int id) {
		user=(User)baseDao.getById(User.class, id);//��ȡɾ�����û���ʵ��
		if(baseDao.delete(user)) {
			return true;
		}
		return false;
	}
	
	//�޸��û���Ϣ
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
