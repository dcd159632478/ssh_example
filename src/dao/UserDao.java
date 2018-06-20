package dao;
import java.util.ArrayList;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import entity.User;

public class UserDao extends HibernateDaoSupport{
	
	public ArrayList<User> getData(String sql,String[] params) {
		ArrayList<User> uList = (ArrayList<User>) this.getHibernateTemplate().find(sql, params);
		if(uList.size()>0) {
			return uList;
		}
		return null;
	}
}
